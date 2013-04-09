# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="README.rdoc"
RUBY_FAKEGEM_EXTRAINSTALL="Rakefile"

inherit ruby-fakegem

DESCRIPTION="Rails bindings for Sequel ORM"
HOMEPAGE="https://github.com/talentbox/sequel-rails"

SRC_URI="http://github.com/talentbox/${PN}/tarball/v${PV} -> ${PN}-git-${PV}.tgz"
RUBY_S="TalentBox-${PN}-*"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/sequel-3.28:3
  ~dev-ruby/railties-3.2
"
