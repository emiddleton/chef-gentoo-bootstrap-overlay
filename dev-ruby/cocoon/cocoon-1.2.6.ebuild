# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.markdown History.md"
RUBY_FAKEGEM_EXTRAINSTALL="app lib"

inherit ruby-fakegem

DESCRIPTION="Unobtrusive nested forms handling, using jQuery."
HOMEPAGE="http://github.com/nathanvda/cocoon"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
