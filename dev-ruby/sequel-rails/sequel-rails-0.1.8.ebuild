# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="Rakefile"

inherit ruby-fakegem

DESCRIPTION="Rails bindings for Sequel ORM"
HOMEPAGE="https://github.com/emiddleton/sequel-rails"

SRC_URI="http://github.com/emiddleton/${PN}/tarball/v${PV} -> ${PN}-git-${PV}.tgz"
S="${WORKDIR}/emiddleton-${PN}-*"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  >=dev-ruby/sequel-3.13:3
  >=dev-ruby/actionpack-3.0.4
  >=dev-ruby/activesupport-3.0.4
  >=dev-ruby/railties-3.0.4"
RDEPEND="${DEPEND}"

