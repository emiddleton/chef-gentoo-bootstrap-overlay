# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ree18"

# The default test task tries to test activerecord with SQLite as well.
RUBY_FAKEGEM_TASK_TEST="test_action_pack"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README.rdoc"

RUBY_FAKEGEM_GEMSPEC="actionpack.gemspec"

inherit ruby-fakegem

RAILS_PV="$(get_version_component_range 1-3)"

DESCRIPTION="Eases web-request routing, handling, and response."
HOMEPAGE="http://rubyforge.org/projects/actionpack/"
SRC_URI="http://github.com/rails/rails/tarball/v${PV} -> rails-${PV}.tgz"

LICENSE="MIT"
SLOT="${RAILS_PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

RUBY_S="rails-rails-*/actionpack"

ruby_add_rdepend "
	!<dev-ruby/actionpack-3.0.4-r3
	dev-ruby/activemodel:${RAILS_PV}
	dev-ruby/activesupport:${RAILS_PV}
	>=dev-ruby/builder-2.1.2:0
	>=dev-ruby/erubis-2.6.6
	>=dev-ruby/i18n-0.4
	>=dev-ruby/rack-1.2.1:1.2
	>=dev-ruby/rack-mount-0.6.13:0.6
	>=dev-ruby/rack-test-0.5.7:0.5
	>=dev-ruby/tzinfo-0.3.23"

ruby_add_bdepend "
	test? (
		dev-ruby/activerecord:${RAILS_PV}
		dev-ruby/actionmailer:${RAILS_PV}
	)"

all_ruby_prepare() {
	epatch "${FILESDIR}/3-0-null_param.patch"
	epatch "${FILESDIR}/3-0-null_array_param.patch"
	epatch "${FILESDIR}/3-0-xml_parsing.patch"
	epatch "${FILESDIR}/3-0-CVE-2013-0155.patch"

	# Set test environment to our hand.
	rm "${S}/../Gemfile" || die "Unable to remove Gemfile"
	sed -i -e '/\/load_paths/d' test/abstract_unit.rb || die "Unable to remove load paths"

	# Loosen erubis and rack-mount dependencies since these are not slotted.
	sed -i -e 's/~> 2.6.6/>= 2.6.6/' -e 's/~> 0.6.14/>= 0.6.14/' actionpack.gemspec || die
}
