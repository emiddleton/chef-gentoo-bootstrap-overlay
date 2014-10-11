# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="gumbo-parser lib"

inherit multilib ruby-fakegem

DESCRIPTION="Nokogiri interface to the Gumbo HTML5 parser"
HOMEPAGE="https://github.com/rubys/nokogumbo/#readme"

LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "dev-ruby/nikogiri"

each_ruby_configure() {
	${RUBY} -Cext/nokogumboc extconf.rb || die
}

each_ruby_compile() {
	emake -Cext/nokogumboc V=1
	cp ext/nokogumboc/nokogumboc$(get_modname) lib/ || die
}
