# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

EGIT_REPO_URI="git://github.com/skydb/sky.git"
EGIT_BRANCH="unstable"

inherit eutils git-2

DESCRIPTION="Sky is an open source, behavioral analytics database."
HOMEPAGE="http://skydb.io"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	dev-golang/mux
	dev-golang/toml
	dev-golang/gomdb
	dev-golang/codec
	=dev-db/lmdb-0.9.6
	=dev-lang/luajit-2.0.1*
"
RDEPEND="${DEPEND}"

S=${WORKDIR}/src/github.com/skydb/sky

src_compile() {
	GOPATH=${WORKDIR} go build -o skyd.bin skyd.go
}

src_install() {
	dodoc README.md TODO
	exeinto /usr/bin
	newexe skyd.bin skyd
}
