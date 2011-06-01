# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
DESCRIPTION="Gecode is an open, free, portable, accessible, and efficient
environment for developing constraint-based systems and applications"
SRC_URI="http://www.gecode.org/download/${P}.tar.gz"
HOMEPAGE="http://www.gecode.org/"

SLOT="0"
LICENSE="MIT"
KEYWORDS="~x86 ~amd64"
IUSE="doc examples +gist"

DEPEND="gist? ( x11-libs/qt-core 
	    	x11-libs/qt-gui 
			media-libs/freetype
			media-libs/libpng
			>=dev-libs/glib-2 )"
RDEPEND="${DEPEND}"

src_compile() {
	local myconf=

	use gist && myconf="--enable-qt --enable-gist"

	econf \
		--disable-examples \
		${myconf} || die "config failed"

	emake || die "compile failed"

	if use doc; then
		emake doc
	fi
}

src_install() {
	emake DESTDIR="${D}" install || die "install failed"

	if use doc; then
		dohtml -r doc/html/
		einfo "HTML documentation has been installed into " \
			"/usr/share/doc/${PF}/html"
	fi

	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins examples/*.cpp
		einfo "Example C++ programs have been installed into " \
			"/usr/share/doc/${PF}/examples"
	fi
}
