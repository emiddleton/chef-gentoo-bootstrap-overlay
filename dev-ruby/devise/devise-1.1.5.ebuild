# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.rdoc TODO CHANGELOG.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="Gemfile Gemfile.lock app config"

inherit ruby-fakegem

DESCRIPTION="Flexible authentication solution for Rails with Warden"
HOMEPAGE="http://github.com/plataformatec/devise"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  >=dev-ruby/warden-1.0.2
  >=dev-ruby/bcrypt-ruby-2.1.2"
RDEPEND="${DEPEND}"

