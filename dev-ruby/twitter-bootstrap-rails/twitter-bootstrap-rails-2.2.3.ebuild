# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby18 ruby19"

inherit ruby-fakegem

DESCRIPTION="Bootstrap CSS toolkit for Rails 3.1 Asset Pipeline"
HOMEPAGE="https://github.com/seyhunak/twitter-bootstrap-rails"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

ruby_add_rdepend "
  >=dev-ruby/railties-3.1
  >=dev-ruby/actionpack-3.1
  dev-ruby/execjs
"
