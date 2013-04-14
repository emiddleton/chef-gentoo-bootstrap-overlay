# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="CONTRIBUTING.md README.md"
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Ruby wrapper for UglifyJS JavaScript compressor"
HOMEPAGE="http://github.com/lautis/uglifier"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

