# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

# jruby → uses a binary extension
USE_RUBY="ruby18 ruby19 ree18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Binary-based efficient data interchange format for ruby binding"
HOMEPAGE="http://msgpack.sourceforge.jp/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86 ~x86-fbsd"
IUSE=""

each_ruby_configure() {
	${RUBY} -Cext/msgpack extconf.rb || die "Configuration of extension failed."
}

each_ruby_compile() {
	emake -Cext/msgpack || die

	cp ext/msgpack/msgpack.so lib/ || die "Unable to install msgpack library."
}

each_ruby_test() {
	cd test
	${RUBY} test_cases.rb || die "tests failed"
	${RUBY} test_pack_unpack.rb || die "tests failed"
	${RUBY} test_encoding.rb || die "tests failed"
}
