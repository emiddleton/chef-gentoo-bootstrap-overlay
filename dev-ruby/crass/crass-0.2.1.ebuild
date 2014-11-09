# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_EXTRADOC="HISTORY.md README.md"
RUBY_FAKEGEM_EXTRAINSTALL="lib"

inherit ruby-fakegem

DESCRIPTION="CSS parser based on the CSS Syntax Level 3 draft."
HOMEPAGE="https://github.com/rgrove/crass/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
