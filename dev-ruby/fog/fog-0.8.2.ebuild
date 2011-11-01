# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
USE_RUBY="ruby18"

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
	>=dev-ruby/excon-0.6.1
	>=dev-ruby/formatador-0.1.3
	dev-ruby/json
	dev-ruby/mime-types
	>=dev-ruby/net-ssh-2.1.3
	>=dev-ruby/nokogiri-1.4.4
	dev-ruby/ruby-hmac
	"
