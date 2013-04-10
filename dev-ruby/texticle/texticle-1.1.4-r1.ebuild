# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_BINWRAP=""
RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

RUBY_S="han-${P}"

inherit ruby-fakegem

DESCRIPTION="library for using full text search from PostgreSQL "
HOMEPAGE="http://texticle.rubyforge.org/"

EGIT_REPO_URI="git://github.com/han/${PN}.git"
EGIT_MASTER="1.x"
EGIT_COMMIT="227f67ee876f65124b55450a3201255c8f0b2054"
EGIT_SOURCEDIR="${WORKDIR}/all/han-${P}"
SRC_URI=""

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
