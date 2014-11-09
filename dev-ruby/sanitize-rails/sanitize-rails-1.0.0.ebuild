# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="example lib"

inherit ruby-fakegem

DESCRIPTION="A sanitizer bridge for Rails applications"
HOMEPAGE="http://github.com/vjt/sanitize-rails"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
  >=dev-ruby/rails-3.0
  >=dev-ruby/sanitize-3.0
"
