# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="real-time stats for preforking Rack servers"
HOMEPAGE="http://raindrops.bogomips.org/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

each_ruby_configure() {
    ${RUBY} -Cext/raindrops extconf.rb || die "extconf.rb failed"
}

each_ruby_compile() {
	emake -Cext/raindrops || die "emake failed"
	cp ext/raindrops/raindrops_ext.so lib/ || die
}
