# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="readme.md"
RUBY_FAKEGEM_EXTRAINSTALL="Gemfile Gemfile.lock Rakefile"

EGIT_REPO_URI="https://github.com/emiddleton/mailqueue.git"
EGIT_COMMIT="91feb00a31dc8cde1b166b0d10cd5df3c1f77f02"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-mailqueue"

RUBY_S="emiddleton-mailqueue"

inherit ruby-fakegem

DESCRIPTION="MailQueue is an asynchronous mail delivery library"
HOMEPAGE="http://github.com/han/mailqueue"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

inherit git-2

ruby_add_bdepend "
  >=dev-ruby/mail-2.2.14
  >=dev-ruby/stalker-0.6.1
"
