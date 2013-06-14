# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

EGIT_REPO_URI="git://github.com/bmizerany/pq.git"

inherit eutils multilib git-2

DESCRIPTION="A pure GO postgres driver"
HOMEPAGE="http://github.com/bmizerany/pq"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}/src/github.com/bmizerany/pq

src_install() {
	mkdir -p ${D}/usr/$(get_libdir)/go/src
  	cp -r ${WORKDIR}/src ${D}/usr/$(get_libdir)/go/src/pkg
}
