# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="Sass adapter for the Rails asset pipeline."
HOMEPAGE="https://github.com/wycats/sass-rails"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/sass-3.1.10
  >=dev-ruby/railties-3.2.0
  >=dev-ruby/tilt-1.3
"
