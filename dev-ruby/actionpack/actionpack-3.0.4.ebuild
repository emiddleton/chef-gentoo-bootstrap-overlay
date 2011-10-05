# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/actionpack/actionpack-3.0.7.ebuild,v 1.2 2011/07/23 07:34:11 graaff Exp $

EAPI=2

USE_RUBY="ruby18 ree18"

# The default test task tries to test activerecord with SQLite as well.
RUBY_FAKEGEM_TASK_TEST="test_action_pack"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README.rdoc"

RUBY_FAKEGEM_GEMSPEC="actionpack.gemspec"

inherit ruby-fakegem

DESCRIPTION="Eases web-request routing, handling, and response."
HOMEPAGE="http://rubyforge.org/projects/actionpack/"
SRC_URI="http://github.com/rails/rails/tarball/v${PV} -> rails-${PV}.tgz"

LICENSE="MIT"
SLOT="3.0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

S="${WORKDIR}/rails-rails-*/actionpack"

ruby_add_rdepend "
	~dev-ruby/activemodel-${PV}
	~dev-ruby/activesupport-${PV}
	>=dev-ruby/builder-2.1.2:0
	>=dev-ruby/erubis-2.6.6
	>=dev-ruby/i18n-0.5.0:0.5
	>=dev-ruby/rack-1.2.1:1.2
	>=dev-ruby/rack-mount-0.6.14
	>=dev-ruby/rack-test-0.5.7:0.5
	>=dev-ruby/tzinfo-0.3.23"

ruby_add_bdepend "
	test? (
		~dev-ruby/activerecord-${PV}
		~dev-ruby/actionmailer-${PV}
	)"

all_ruby_prepare() {
	# Set test environment to our hand.
	rm "${S}/../Gemfile" || die "Unable to remove Gemfile"
	sed -i -e '/\/load_paths/d' test/abstract_unit.rb || die "Unable to remove load paths"

	# Loosen erubis and rack-mount dependencies since these are not slotted.
	sed -i -e 's/~> 2.6.6/>= 2.6.6/' -e 's/~> 0.6.14/>= 0.6.14/' actionpack.gemspec || die
}
