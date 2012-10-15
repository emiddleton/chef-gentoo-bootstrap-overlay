# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Open-source DVD to MPEG-4 converter"
HOMEPAGE="http://handbrake.fr/"
UBUNTU_RELEASE="lucid1"
SRC_URI="
	https://edge.launchpad.net/~stebbins/+archive/handbrake-snapshots/+files/handbrake-cli_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.deb
	https://edge.launchpad.net/~stebbins/+archive/handbrake-snapshots/+files/handbrake-gtk_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.deb
	mirror://ubuntu/pool/main/libn/libnotify/libnotify1_0.4.5-1ubuntu3_amd64.deb"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-arch/bzip2
	app-arch/deb2targz
	dev-libs/fribidi"
RDEPEND="${DEPEND}"

src_unpack(){
	mkdir ${S}
	cd ${WORKDIR}
	cp ${FILESDIR}/deb2tarbz2 .
	chmod +x deb2tarbz2

	cp ${DISTDIR}/handbrake-cli_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.deb ${WORKDIR} 
	./deb2tarbz2 handbrake-cli_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.deb
	tar -xjvf handbrake-cli_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.tar.bz2 -C ${S}

	cp ${DISTDIR}/handbrake-gtk_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.deb ${WORKDIR} 
	./deb2tarbz2 handbrake-gtk_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.deb
	tar -xjvf handbrake-gtk_${PV}svnppa1~${UBUNTU_RELEASE}_amd64.tar.bz2 -C ${S}
	
	cp ${DISTDIR}/libnotify1_0.4.5-1ubuntu3_amd64.deb ${WORKDIR}
	deb2targz libnotify1_0.4.5-1ubuntu3_amd64.deb
	tar -xzvf libnotify1_0.4.5-1ubuntu3_amd64.tar.gz -C ${S}
}

src_install(){
	cp -r usr ${D}
}
