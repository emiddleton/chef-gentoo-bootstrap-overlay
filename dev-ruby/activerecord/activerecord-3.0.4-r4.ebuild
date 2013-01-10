# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI=4
USE_RUBY="ruby18 ree18"

# this is not null so that the dependencies will actually be filled
RUBY_FAKEGEM_TASK_TEST="test"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README.rdoc"

RUBY_FAKEGEM_GEMSPEC="activerecord.gemspec"

inherit ruby-fakegem

RAILS_PV="$(get_version_component_range 1-3)"

DESCRIPTION="Implements the ActiveRecord pattern (Fowler, PoEAA) for ORM"
HOMEPAGE="http://rubyforge.org/projects/activerecord/"
SRC_URI="http://github.com/rails/rails/tarball/v${PV} -> rails-${PV}.tgz"

LICENSE="MIT"
SLOT="${RAILS_PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE="mysql postgres sqlite3"

RUBY_S="rails-rails-*/${PN}"

ruby_add_rdepend "dev-ruby/activesupport:${RAILS_PV}
	dev-ruby/activemodel:${RAILS_PV}
	>=dev-ruby/arel-2.0.2:2.0
	>=dev-ruby/tzinfo-0.3.23
	sqlite3? ( >=dev-ruby/sqlite3-ruby-1.3.3 )
	mysql? ( dev-ruby/mysql2:0.2 )
	postgres? ( dev-ruby/pg )"

ruby_add_bdepend "
	test? (
		dev-ruby/actionpack:${RAILS_PV}
		>=dev-ruby/sqlite3-ruby-1.3.3
		>=dev-ruby/mocha-0.9.5
		virtual/ruby-test-unit
	)"

all_ruby_prepare() {
	# Set test environment to our hand.
	epatch "${FILESDIR}/3-0-params_sql_injection.patch"
	epatch "${FILESDIR}/3-0-sql-injection.patch"
	epatch "${FILESDIR}/3-0-dynamic_finder_injection.patch"
	epatch "${FILESDIR}/3-0-null_array_param.patch"
	
	rm "${S}/../Gemfile" || die "Unable to remove Gemfile"
	sed -i -e '/load_paths/d' test/cases/helper.rb || die "Unable to remove load paths"
}

each_ruby_test() {
	case ${RUBY} in
		*jruby)
			;;
		*)
			if use sqlite3; then
				${RUBY} -S rake test_sqlite3 || die "sqlite3 tests failed"
			fi
			;;
	esac
}
