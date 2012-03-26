# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.md SUPPORTED_RAILS_VERSIONS TESTING.md README_FOR_HEROKU_ADDON.md"
RUBY_FAKEGEM_EXTRAINSTALL="Rakefile Guardfile generators rails resources script"

inherit ruby-fakegem

DESCRIPTION="The official Airbrake library for Ruby on Rails"
HOMEPAGE="http://airbrake.io/"

LICENSE="MIT"
SLOT="3"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

