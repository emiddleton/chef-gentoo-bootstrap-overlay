# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Rack server for fast low-latency, high-bandwidth connections"
HOMEPAGE="http://unicorn.bogomips.org/"

LICENSE="GPL2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
  >=dev-ruby/kgio-2.4
  dev-ruby/rack
  >=dev-ruby/raindrops-0.6
"
RDEPEND="${DEPEND}"

each_ruby_configure() {
    ${RUBY} -Cext/unicorn_http extconf.rb || die "extconf.rb failed"
}

each_ruby_compile() {
	emake -Cext/unicorn_http || die "emake failed"
	cp ext/unicorn_http/unicorn_http.so lib/ || die
}

all_ruby_install(){
	all_fakegem_install

	newinitd "${FILESDIR}"/unicorn.init unicorn
	newconfd "${FILESDIR}"/unicorn.confd unicorn
}
