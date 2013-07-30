# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby19"

RUBY_FAKEGEM_NAME="${PN}.rb"
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="data"
inherit ruby-fakegem

DESCRIPTION="Library for extracting marketing attribution data from referer URLs"
HOMEPAGE="http://github.com/emiddleton/useragent.rb"

EGIT_REPO_URI="git://github.com/emiddleton/${PN}.rb.git"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-${P}.rb"
SRC_URI=""

RUBY_S="emiddleton-${PN}-*"

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
