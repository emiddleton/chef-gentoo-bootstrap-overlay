# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit multilib

DESCRIPTION="Go client for the Sky database"
HOMEPAGE="https://github.com/skydb/sky.go"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	mkdir -p ${S}
}

src_compile() {
	mkdir -p ${WORKDIR}/usr/$(get_libdir)/go
	GOPATH=${WORKDIR}/usr/$(get_libdir)/go go get github.com/skydb/sky.go
}

src_install() {
	mkdir -p ${D}/usr/$(get_libdir)/go/src
  	cp -r ${WORKDIR}/usr/$(get_libdir)/go/src ${D}/usr/$(get_libdir)/go/src/pkg
}
