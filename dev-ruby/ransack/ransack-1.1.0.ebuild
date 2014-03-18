# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="Object-based searching for ActiveRecord"
HOMEPAGE="https://github.com/ernie/ransack"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"

ruby_add_rdepend "
	>=dev-ruby/polyamorous-0.6.0
"
