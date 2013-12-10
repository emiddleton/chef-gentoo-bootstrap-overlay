# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2

EGIT_REPO_URI="https://github.com/mozilla-services/${PN}.git"
EGIT_COMMIT="v${PV}"

DESCRIPTION="Data collection and processing made easy"
HOMEPAGE="http://hekad.readthedocs.org/"
SRC_URI=""

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

DEPEND="
	doc? ( dev-python/sphinx )
	>=dev-util/cmake-2.8.7
	>=dev-lang/go-1.1
"
RDEPEND="${DEPEND}"

src_compile(){
	source build.sh
}

src_install(){
	cd ${S}/build
	cpack -G TBZ2
	dodir /usr
	cd ${D}/usr
	tar -xjvf ${S}/build/heka-${PV//./_}-linux-*.tar.bz2 --strip-components=1
}

src_test(){
	make test || die "At least one test failed"
}
