# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="lib vendor"
RUBY_S="emiddleton-${P}"

inherit ruby-fakegem

DESCRIPTION="jquery datatables for rails"
HOMEPAGE="https://github.com/rweng/jquery-datatables-rails"

EGIT_REPO_URI="https://github.com/emiddleton/${PN}.git"
EGIT_COMMIT="237a84311427bedbac28b7dd9aea9ee31b1a3055"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-${P}"
SRC_URI=""

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
