# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="VERSION templates rails spec"

inherit ruby-fakegem

DESCRIPTION="Ruby library to easily generate XML Sitemaps"
HOMEPAGE="http://github.com/kjvarga/sitemap_generator"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend 'dev-ruby/builder dev-ruby/nokogiri'
