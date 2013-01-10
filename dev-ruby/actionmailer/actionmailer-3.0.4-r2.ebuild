# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README.rdoc"

RUBY_FAKEGEM_GEMSPEC="actionmailer.gemspec"

inherit ruby-fakegem

RAILS_PV="$(get_version_component_range 1-3)"

DESCRIPTION="Framework for designing email-service layers"
HOMEPAGE="http://rubyforge.org/projects/actionmailer/"
SRC_URI="http://github.com/rails/rails/tarball/v${PV} -> rails-${PV}.tgz"

LICENSE="MIT"
SLOT="${RAILS_PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

RUBY_S="rails-rails-*/actionmailer"

ruby_add_rdepend "
    !<dev-ruby/actionmailer-3.0.4-r2
    dev-ruby/actionpack:${RAILS_PV}
	>=dev-ruby/mail-2.2.15"
ruby_add_bdepend "test? (
	>=dev-ruby/mocha-0.9.5
	virtual/ruby-test-unit
)"

all_ruby_prepare() {
	# Set test environment to our hand.
	rm "${S}/../Gemfile" || die "Unable to remove Gemfile"
	sed -i -e '/\/load_paths/d' test/abstract_unit.rb || die "Unable to remove load paths"
}
