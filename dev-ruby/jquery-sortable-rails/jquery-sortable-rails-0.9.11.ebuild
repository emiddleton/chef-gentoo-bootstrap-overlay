# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="vendor certs"

inherit ruby-fakegem

DESCRIPTION="Sortable control for jQuery."
HOMEPAGE="http://github.com/bai/jquery-sortable-rails"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
