# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Haml generators for Rails 3"
HOMEPAGE="http://github.com/indirect/haml-rails"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

ruby_add_bdepend "
  ~dev-ruby/actionpack-3.0
  ~dev-ruby/activesupport-3.0
  >=dev-ruby/haml-3.0
  ~dev-ruby/railties-3.0
"
