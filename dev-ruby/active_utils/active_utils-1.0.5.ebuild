# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="Common utils used by active_merchant, active_fulfillment, etc."
HOMEPAGE="http://github.com/shopify/active_utils"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/activesupport-2.3.11
  dev-ruby/i18n
"
