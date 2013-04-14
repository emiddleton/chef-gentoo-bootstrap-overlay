# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="Library for calculating weekly time differences between timezones"
HOMEPAGE="https://github.com/emiddleton/availability"
SRC_URI="https://github.com/emiddleton/availability/tarball/v${PV} -> ${P}.tar.gz"
RUBY_S="emiddleton-${PN}-*"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
