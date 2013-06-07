# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit multilib

DESCRIPTION="TOML parser for Go with reflection"
HOMEPAGE="https://github.com/mojombo/toml"
SRC_URI=""

LICENSE="WTFPL-2"
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
	GOPATH=${WORKDIR}/usr/$(get_libdir)/go go get github.com/BurntSushi/toml
}

src_install() {
	mkdir -p ${D}/usr/$(get_libdir)/go/src
  	cp -r ${WORKDIR}/usr/$(get_libdir)/go/src ${D}/usr/$(get_libdir)/go/src/pkg
}
