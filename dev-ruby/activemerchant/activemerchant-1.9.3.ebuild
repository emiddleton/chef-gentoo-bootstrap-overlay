# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="CHANGELOG CONTRIBUTORS README.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="gem-public_cert.pem"

inherit ruby-fakegem

DESCRIPTION="A simple payment abstraction library used by Shopify"
HOMEPAGE="http://activemerchant.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  >=dev-ruby/activesupport-2.3.2
  >=dev-ruby/builder-2.0.0
  >=dev-ruby/braintree-2.0.0"
RDEPEND="${DEPEND}"

