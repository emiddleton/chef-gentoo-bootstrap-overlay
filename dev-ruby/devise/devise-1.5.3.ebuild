# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.rdoc CHANGELOG.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="Gemfile app config"

inherit ruby-fakegem

DESCRIPTION="Flexible authentication solution for Rails with Warden"
HOMEPAGE="http://github.com/plataformatec/devise"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
  >=dev-ruby/orm_adapter-0.0.4
  >=dev-ruby/bcrypt-ruby-3.0.1
  >=dev-ruby/warden-1.1.0"

