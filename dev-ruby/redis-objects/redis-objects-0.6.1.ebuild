# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="Map Redis types directly to Ruby objects. Works with any class or ORM."
HOMEPAGE="http://github.com/nateware/redis-objects"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend "
	>=dev-ruby/redis-3.0.2
"
