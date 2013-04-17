# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRAINSTALL="app README.md test config"

inherit ruby-fakegem

DESCRIPTION="CSS stylesheet splitter for Rails"
HOMEPAGE="https://github.com/zweilove/css_splitter"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/rails-3.1
"
