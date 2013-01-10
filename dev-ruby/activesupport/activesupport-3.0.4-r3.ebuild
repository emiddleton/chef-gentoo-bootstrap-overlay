# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby18 ree18 ruby19"

RUBY_FAKEGEM_TASK_DOC=""

RUBY_FAKEGEM_EXTRADOC="CHANGELOG README.rdoc"

RUBY_FAKEGEM_GEMSPEC="activesupport.gemspec"

inherit ruby-fakegem versionator

RAILS_PV="$(get_version_component_range 1-3)"

DESCRIPTION="Utility Classes and Extension to the Standard Library"
HOMEPAGE="http://rubyforge.org/projects/activesupport/"
SRC_URI="https://github.com/rails/rails/tarball/v${PV} -> rails-${PV}.tgz"

LICENSE="MIT"
SLOT="${RAILS_PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

RUBY_S="rails-rails-*/${PN}"

# libxml-ruby and nokogiri are not strictly needed, but there are tests
# using this code.
ruby_add_bdepend "test? (
	!<dev-ruby/activesupport-3.0.4-r3
	virtual/ruby-test-unit
	>=dev-ruby/libxml-2.0.0
	dev-ruby/nokogiri
	)"

all_ruby_prepare() {
	# don't support older mocha versions as the optional codepath
	# breaks JRuby
	epatch "${FILESDIR}"/${PN}-3.0.3-mocha-0.9.5.patch
	epatch "${FILESDIR}"/3-0-xml_parsing.patch

	# Set test environment to our hand.
	rm "${S}/../Gemfile" || die "Unable to remove Gemfile"
	sed -i -e '/load_paths/d' test/abstract_unit.rb || die "Unable to remove load paths"
}
