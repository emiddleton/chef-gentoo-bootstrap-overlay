# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby18 ruby19 ree18"

RUBY_FAKEGEM_TASK_TEST="test"

RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="History.md Performance.md README.md"

inherit ruby-fakegem

DESCRIPTION="A high performance pure Ruby client for accessing memcached servers."
HOMEPAGE="http://github.com/mperham/dalli"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND+="${DEPEND} test? ( >=net-misc/memcached-1.4.0 )"

ruby_add_bdepend "test? (
		dev-ruby/mini_shoulda
		>=dev-ruby/mocha-0.13
		=dev-ruby/rails-3* )"
