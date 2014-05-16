# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.rdoc VERSION_COMPATIBILITY.rdoc History.rdoc CONTRIBUTING.md"
RUBY_FAKEGEM_EXTRAINSTALL="lib vendor"

inherit ruby-fakegem

DESCRIPTION="Rails gem for multipart forms (AJAX style file uploads)"
HOMEPAGE="http://opensource.alfajango.com/remotipart/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
