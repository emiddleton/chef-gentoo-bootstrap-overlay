# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.rdoc BENCHMARKS.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="benchmarks"

inherit ruby-fakegem

DESCRIPTION="This pure Ruby library can read and write PNG images"
HOMEPAGE="http://wiki.github.com/wvanbergen/chunky_png"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

