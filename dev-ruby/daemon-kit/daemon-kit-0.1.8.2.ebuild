# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="README.rdoc Configuration.txt Deployment.txt History.txt
Logging.txt PostInstall.txt RuoteParticipants.txt TODO.txt Upgrading.md"
RUBY_FAKEGEM_EXTRAINSTALL="Rakefile"

inherit ruby-fakegem

DESCRIPTION="Opinionated framework for Ruby daemons"
HOMEPAGE="http://github.com/kennethkalmer/daemon-kit"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
  >=dev-ruby/eventmachine-0.12.10
  >=dev-ruby/safely-0.3.1
"
