# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="VERSION Rakefile"

inherit ruby-fakegem

DESCRIPTION="A job queueing ruby DSL for Beanstalk"
HOMEPAGE="http://kr.github.com/beanstalkd/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
  dev-ruby/beanstalk-client
  dev-ruby/json_pure
"
RDEPEND="${DEPEND}"

