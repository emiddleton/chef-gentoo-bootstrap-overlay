# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit multilib

DESCRIPTION="gorilla/mux is a powerful URL router and dispatcher"
HOMEPAGE="http://www.gorillatoolkit.org/pkg/mux"
SRC_URI=""

LICENSE="BSD"
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
	GOPATH=${WORKDIR}/usr/$(get_libdir)/go go get github.com/gorilla/mux
}

src_install() {
	mkdir -p ${D}/usr/$(get_libdir)/go/src
  	cp -r ${WORKDIR}/usr/$(get_libdir)/go/src ${D}/usr/$(get_libdir)/go/src/pkg
}
