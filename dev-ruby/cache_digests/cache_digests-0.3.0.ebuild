# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby19"

inherit ruby-fakegem

DESCRIPTION="Nested fragment caches with (even) less situps"
HOMEPAGE="https://github.com/rails/cache_digests"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_bdepend "
  dev-ruby/thread_safe
  >=dev-ruby/actionpack-3.2
"
