# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="Integrate Compass into Rails 2.3 and up."
HOMEPAGE="https://github.com/Compass/compass-rails"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/compass-0.12.2
"
