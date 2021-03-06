# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="data"
RUBY_S="emiddleton-${P}"

inherit ruby-fakegem

DESCRIPTION="Library for calculating weekly time differences between timezones"
HOMEPAGE="https://github.com/emiddleton/carmen"

EGIT_REPO_URI="git://github.com/emiddleton/${PN}.git"
EGIT_COMMIT="06fbcdaf26825504b19a90d61863ca8bfbc65217"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-${P}"
SRC_URI=""

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
