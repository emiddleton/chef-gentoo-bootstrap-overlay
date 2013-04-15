# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="VERSION templates rails spec"

RUBY_S="emiddleton-${P}"

inherit ruby-fakegem

DESCRIPTION="Ruby library to easily generate XML Sitemaps"
HOMEPAGE="http://github.com/kjvarga/sitemap_generator"

EGIT_REPO_URI="git://github.com/emiddleton/${PN}.git"
EGIT_COMMIT="35742163e6180f5d076ff531f4f50309652ee741"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-${P}"
SRC_URI=""

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend 'dev-ruby/builder dev-ruby/nokogiri'
