# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18"

RUBY_FAKEGEM_DOCDIR="qed"
RUBY_FAKEGEM_EXTRADOC="HISTORY.rdoc README.rdoc *.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL=".ruby"

inherit ruby-fakegem

DESCRIPTION="Facets-bread collection of Hash-like classes."
HOMEPAGE="http://rubyworks.github.com/hashery"
SRC_URI="https://github.com/rubyworks/${PN}/tarball/${PV} -> ${P}.tgz"
RUBY_S="rubyworks-${PN}-*"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
