# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.rdoc doc"
RUBY_FAKEGEM_EXTRAINSTALL="Rakefile"

inherit ruby-fakegem

DESCRIPTION="The Database Toolkit for Ruby"
HOMEPAGE="http://sequel.rubyforge.org"

LICENSE="MIT"
SLOT="3"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

