# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="A fast, safe and extensible Markdown to (X)HTML parser"
HOMEPAGE="http://github.com/vmg/redcarpet"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

each_ruby_compile() {
	${RUBY} -S rake compile:redcarpet || die "extension compile failed"
}
