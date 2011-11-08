# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="readme.md"
RUBY_FAKEGEM_EXTRAINSTALL="Gemfile Gemfile.lock Rakefile"

inherit ruby-fakegem

DESCRIPTION="MailQueue is an asynchronous mail delivery library"
HOMEPAGE="http://github.com/han/mailqueue"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
  >=dev-ruby/mail-2.2.14
  >=dev-ruby/stalker-0.6.1
"
RDEPEND="${DEPEND}"

