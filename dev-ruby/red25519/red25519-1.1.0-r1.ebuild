# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="Ruby wrappers for the Ed25519 public key signature system"
HOMEPAGE="https://github.com/tarcieri/red25519"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_bdepend "
       >=dev-ruby/hkdf-0.2.0
"

each_ruby_configure() {
	${RUBY} -C ext/red25519 extconf.rb || die "extconf.rb failed"
}

each_ruby_compile() {
	emake -C ext/red25519 || die "emake failed"
}

each_ruby_install() {
	each_fakegem_install
	ruby_fakegem_newins ext/red25519/red25519_engine.so lib/red25519_engine.so || die
}
