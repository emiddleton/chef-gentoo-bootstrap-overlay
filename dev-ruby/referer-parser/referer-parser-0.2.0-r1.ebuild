# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="data"

inherit ruby-fakegem

DESCRIPTION="Library for extracting marketing attribution data from referer URLs"
HOMEPAGE="http://github.com/snowplow/referer-parser"

EGIT_REPO_URI="git://github.com/emiddleton/${PN}.git"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-${P}"
SRC_URI=""

RUBY_S="emiddleton-referer-parser-*/ruby"

inherit git-2

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
