# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
USE_RUBY="ruby18"

RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""
RUBY_FAKEGEM_EXTRAINSTALL="rails generators"

inherit ruby-fakegem

DESCRIPTION="library for hoptoad exception notification service"
HOMEPAGE="http://www.hoptoadapp.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  dev-ruby/activesupport
  dev-ruby/builder
"
RDEPEND="${DEPEND}"

