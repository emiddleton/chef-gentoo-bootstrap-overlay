# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""
RUBY_FAKEGEM_EXTRADOC="README.rdoc"

inherit ruby-fakegem

DESCRIPTION="A Ruby interface for the gitolite git backend system"
HOMEPAGE="https://github.com/wingrunr21/gitolite"

EGIT_REPO_URI="git://github.com/wingrunr21/${PN}.git"
EGIT_COMMIT="36dabd226caa40ff052677719adaacbfe667b36c"
EGIT_SOURCEDIR="${WORKDIR}/all/wingrunr21-${P}"
SRC_URI=""

inherit git-2

#SRC_URI="https://github.com/han/${PN}/tarball/${PV} -> ${PN}-git-${PV}.tgz"

S="${WORKDIR}/wingrunr21-${P}"


LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/hashery-1.4.0
>=dev-ruby/grit-2.4.1"
