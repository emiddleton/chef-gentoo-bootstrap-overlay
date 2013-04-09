# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="kinder, gentler I/O for Ruby"
HOMEPAGE="http://bogomips.org/kgio/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

each_ruby_configure() {
    ${RUBY} -Cext/kgio extconf.rb || die "extconf.rb failed"
}

each_ruby_compile() {
	emake -Cext/kgio || die "emake failed"
	cp ext/kgio/kgio_ext.so lib/ || die
}
