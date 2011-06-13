# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MY_PN="ElectroServer"
MY_PV=${PV//./_}
MY_P=${MY_PN}_${MY_PV}

DESCRIPTION="robust socket-server flash media server"
HOMEPAGE="http://www.electro-server.com/overview.aspx"
SRC_URI="http://www.electrotank.com/downloads/${MY_PV}/${MY_P}_Unix_ServerOnly.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc examples"

DEPEND=">=virtual/jre-1.6.0"

RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}

src_install() {
	ELECTROSERVER_HOME=/opt/${MY_P}

	dodir ${ELECTROSERVER_HOME}
	cp -r {$S,$D$ELECTROSERVER_HOME}/server
	cp -r {$S,$D$ELECTROSERVER_HOME}/admin
	cp -r {$S,$D$ELECTROSERVER_HOME}/.install4j

	cp {$S,$D$ELECTROSERVER_HOME}/Start_ElectroServer_5_2_SAFEMODE
	cp {$S,$D$ELECTROSERVER_HOME}/ElectroServer_5_2_Service
	cp {$S,$D$ELECTROSERVER_HOME}/DbUtility
	
	if use doc; then
		dohtml -r apis/*
	fi
	if use examples; then
		cp -r {$S,$D$ELECTROSERVER_HOME}/game_examples
	fi
	
	newinitd ${FILESDIR}/${PV}-electroserver.init electroserver
	newconfd ${FILESDIR}/${PV}-electroserver.conf electroserver

	dodir /var/log/electroserver
}
