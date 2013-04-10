# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_S="emiddleton-${P}"

inherit ruby-fakegem

DESCRIPTION="Offload CarrierWave's image processing and storage to a background process using Delayed Job"
HOMEPAGE="https://github.com/emiddleton/carrierwave_backgrounder"

EGIT_REPO_URI="git://github.com/emiddleton/${PN}.git"
EGIT_COMMIT="1d26a80b173ab3df449ed5e53ce58ea9be8fe1dc"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-${P}"
SRC_URI=""

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend "
  dev-ruby/carrierwave
"
