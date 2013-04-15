# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="Embed the V8 JavaScript interpreter into Ruby"
HOMEPAGE="http://github.com/cowboyd/therubyracer"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_bdepend "
  dev-ruby/ref
  >=dev-ruby/libv8-3.11.8.12
"
