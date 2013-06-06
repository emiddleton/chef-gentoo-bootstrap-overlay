# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

EGIT_REPO_URI="git://github.com/skydb/sky-deps.git"
EGIT_BRANCH="unstable"

inherit eutils git-2

DESCRIPTION="OpenLDAP Lightning Memory-Mapped Database"
HOMEPAGE="https://github.com/skydb/sky-deps/"
SRC_URI=""

LICENSE="OPENLDAP"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}/sky-deps"

src_prepare() {
	epatch "${FILESDIR}/lmdb-man-fix.patch"
}

src_compile() {
	cd ${S}/lmdb
	emake
}

src_install() {
	cd ${S}/lmdb

	exeinto /usr/bin
	doexe mdb_stat mdb_copy

	insinto /usr/include
	doins lmdb.h

	dolib.so liblmdb.so
	dolib.a liblmdb.a

	doman mdb_stat.1 mdb_copy.1
}
