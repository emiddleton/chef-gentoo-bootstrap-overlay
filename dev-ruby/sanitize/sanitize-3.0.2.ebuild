# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_EXTRADOC="HISTORY.md README.md"
RUBY_FAKEGEM_EXTRAINSTALL="lib"

inherit ruby-fakegem

DESCRIPTION="Whitelist-based HTML and CSS sanitizer."
HOMEPAGE="https://github.com/rgrove/sanitize/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "=dev-ruby/crass-0.2.1
	>=dev-ruby/nokogiri-1.4.4
	=dev-ruby/nokogumbo-1.1.12
"
