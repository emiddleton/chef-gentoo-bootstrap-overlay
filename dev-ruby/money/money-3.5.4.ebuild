# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="CHANGELOG.md README.md"

inherit ruby-fakegem

DESCRIPTION="This library aids one in handling money and different currencies."
HOMEPAGE="http://money.rubyforge.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  >=dev-ruby/i18n-0.4
  test? ( >=dev-ruby/rspec-2.0.0
          dev-ruby/yard
          dev-ruby/json )"
RDEPEND="${DEPEND}"

