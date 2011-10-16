# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_TASK_TEST="spec features"
RUBY_FAKEGEM_EXTRA_DOC="README.rdoc"

inherit ruby-fakegem

DESCRIPTION="Simple class based Log mechanism"
HOMEPAGE="http://github.com/opscode/mixlib-log"
SRC_URI="https://github.com/opscode/${PN}/tarball/${PV} -> ${P}.tgz"
RUBY_S="opscode-${PN}-*"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
#IUSE=""

ruby_add_bdepend "test? ( dev-ruby/rspec:0 dev-util/cucumber )"
