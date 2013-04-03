# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="The Ruby cloud computing library"
HOMEPAGE="http://github.com/geemus/fog"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_rdepend "
    dev-ruby/builder
	>=dev-ruby/excon-0.16.10
	>=dev-ruby/formatador-0.2.4
	>=dev-ruby/multi_json-1.7.2
	dev-ruby/mime-types
	>=dev-ruby/net-ssh-2.1.4
	>=dev-ruby/net-scp-1.0.4
	>=dev-ruby/nokogiri-1.5.6
	dev-ruby/ruby-hmac
	"
