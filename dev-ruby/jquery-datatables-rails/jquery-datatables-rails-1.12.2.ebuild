# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="Readme.md"
RUBY_FAKEGEM_EXTRAINSTALL="lib app"
RUBY_S="rweng-${P}"

inherit ruby-fakegem

DESCRIPTION="jquery datatables for rails"
HOMEPAGE="https://github.com/rweng/jquery-datatables-rails"

EGIT_REPO_URI="https://github.com/rweng/${PN}.git"
EGIT_COMMIT="477e49a649c8d862988298bc96a93e030d023e0e"
EGIT_SOURCEDIR="${WORKDIR}/all/rweng-${P}"
SRC_URI=""

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
