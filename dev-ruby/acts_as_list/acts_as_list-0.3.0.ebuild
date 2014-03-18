# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="gemfiles init.rb"

inherit ruby-fakegem

DESCRIPTION="A gem allowing a active_record model to act_as_list."
HOMEPAGE="http://github.com/swanandp/acts_as_list"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
