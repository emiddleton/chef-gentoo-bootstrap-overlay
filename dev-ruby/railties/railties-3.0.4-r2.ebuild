# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_TASK_TEST="test:regular"
RUBY_FAKEGEM_TASK_DOC="generate_guides"
RUBY_FAKEGEM_DOCDIR="guides/output"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README.rdoc"

RUBY_FAKEGEM_GEMSPEC="railties.gemspec"

inherit ruby-fakegem

RAILS_PV="$(get_version_component_range 1-3)"

DESCRIPTION="Tools for creating, working with, and running Rails applications."
HOMEPAGE="http://github.com/rails/rails"
SRC_URI="http://github.com/rails/rails/tarball/v${PV} -> rails-${PV}.tgz"

LICENSE="MIT"
SLOT="${RAILS_PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

RUBY_S="rails-rails-*/railties"

# The test suite has many failures, most likely due to a mismatch in
# exact dependencies or environment specifics. Needs further
# investigation.
RESTRICT="test"

ruby_add_rdepend "
	!<dev-ruby/railties-3.0.4-r2
	dev-ruby/activesupport:${RAILS_PV}
	dev-ruby/actionpack:${RAILS_PV}
	>=dev-ruby/thor-0.14.4
	>=dev-ruby/rake-0.8.7"

ruby_add_bdepend "
	test? (
		>=dev-ruby/mocha-0.9.5
		virtual/ruby-test-unit
	)
	doc? (
		>=dev-ruby/redcloth-4.1.1
	)"
