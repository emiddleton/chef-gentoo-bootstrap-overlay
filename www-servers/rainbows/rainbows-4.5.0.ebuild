# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="A HTTP server for sleepy Rack applications"
HOMEPAGE="http://rainbows.rubyforge.org/"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend "
  >=dev-ruby/kgio-2.6
  dev-ruby/rack
  >=dev-ruby/raindrops-0.7
  >=www-servers/unicorn-4.6
"

all_ruby_install() {
	all_fakegem_install

	newinitd "${FILESDIR}"/rainbows.initd rainbows
	newconfd "${FILESDIR}"/rainbows.confd rainbows
}
