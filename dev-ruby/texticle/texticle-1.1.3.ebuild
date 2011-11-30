# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="library for using full text search from PostgreSQL "
HOMEPAGE="http://texticle.rubyforge.org/"

EGIT_REPO_URI="git://github.com/han/${PN}.git"
EGIT_MASTER="1.x"
EGIT_COMMIT="9cfdb6204783146a37d90270b24a75ae9b92c661"
EGIT_SOURCEDIR="${WORKDIR}/all/han-${P}"
SRC_URI=""

inherit git-2

#SRC_URI="https://github.com/han/${PN}/tarball/${PV} -> ${PN}-git-${PV}.tgz"

S="${WORKDIR}/han-${P}"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
