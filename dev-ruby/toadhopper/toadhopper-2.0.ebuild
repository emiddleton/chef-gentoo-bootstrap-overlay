# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="Rakefile"

inherit ruby-fakegem

DESCRIPTION="A base library for Airbrake error reporting"
HOMEPAGE="http://github.com/toolmantim/toadhopper"

LICENSE="MIT"
SLOT="3"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

