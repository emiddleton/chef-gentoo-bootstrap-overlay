# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="2"
USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Configuration management tool"
HOMEPAGE="http://wiki.opscode.com/display/chef"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=net-misc/rabbitmq-server-1.7.2
	virtual/jre:1.6"

ruby_add_rdepend "~app-admin/chef-${PV}
	>=dev-ruby/libxml-1.1.3
	>=dev-ruby/uuidtools-2.0.0"

pkg_setup() {
	enewgroup chef
	enewuser chef -1 -1 /var/lib/chef chef
}

each_ruby_install() {
	each_fakegem_install
	ruby_fakegem_doins -r solr
}

all_ruby_install() {
	all_fakegem_install

	doinitd "${FILESDIR}/initd/chef-solr"
	doconfd "${FILESDIR}/confd/chef-solr"

	keepdir /etc/chef /var/lib/chef /var/log/chef /var/run/chef

	insinto /etc/chef
	doins "${FILESDIR}/solr.rb"

	fowners chef:chef /etc/chef/{,solr.rb}
	fowners chef:chef /var/{lib,log,run}/chef
}
