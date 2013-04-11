# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="CHANGELOG CONTRIBUTORS README.md"
RUBY_FAKEGEM_EXTRAINSTALL="gem-public_cert.pem"

inherit ruby-fakegem

DESCRIPTION="A simple payment abstraction library used by Shopify"
HOMEPAGE="http://activemerchant.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/activesupport-2.3.14
  dev-ruby/i18n
  dev-ruby/money
  dev-ruby/builder
  >=dev-ruby/json-1.5.1
  >=dev-ruby/active_utils-1.0.2
  dev-ruby/nokogiri
"
