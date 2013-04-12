# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.markdown"
RUBY_FAKEGEM_TASK_TEST="features"
RUBY_FAKEGEM_EXTRAINSTALL="frameworks"

inherit ruby-fakegem

DESCRIPTION="A Sass-based Stylesheet Framework"
HOMEPAGE="http://compass-style.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/sass-3.1
  >=dev-ruby/chunky_png-1.2
  >=dev-ruby/fssm-1.2.7
"
