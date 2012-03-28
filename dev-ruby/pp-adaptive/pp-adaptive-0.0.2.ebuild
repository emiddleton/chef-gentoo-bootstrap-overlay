# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="Rakefile Gemfile"

inherit ruby-fakegem

DESCRIPTION="PayPal Adaptive Payments API for ruby"
HOMEPAGE="https://github.com/flippa/pp-adaptive"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
  dev-ruby/json
  dev-ruby/rest-client
  >=dev-ruby/virtus-0.0.9
"

