# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/net-ssh/net-ssh-2.1.4.ebuild,v 1.2 2011/08/07 12:29:19 flameeyes Exp $

EAPI="2"
USE_RUBY="ruby18 ruby19 ree18"

RUBY_FAKEGEM_TASK_TEST=""

RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG.rdoc README.rdoc THANKS.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="support"

inherit ruby-fakegem

DESCRIPTION="Non-interactive SSH processing in pure Ruby"
HOMEPAGE="http://net-ssh.rubyforge.org/"

LICENSE="GPL-2"
SLOT="2"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE="test"

ruby_add_rdepend "virtual/ruby-ssl"
# Explicit dependency on test-unit should be avoided but currently test
# suite fails with 2.2.0. Reported upstream as a bug:
# http://net-ssh.lighthouseapp.com/projects/36253-net-ssh/tickets/29-tests-fails-with-test-unit-220
ruby_add_bdepend "test? ( =dev-ruby/test-unit-2.1.2:2 dev-ruby/mocha )"

each_ruby_test() {
	${RUBY} -Ilib:test test/test_all.rb || die "Tests failed."
}
