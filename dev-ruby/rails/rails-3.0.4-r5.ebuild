# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
USE_RUBY="ruby18 ree18"
RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

RAILS_PV="$(get_version_component_range 1-3)"

DESCRIPTION="ruby on rails is a web-application and persistance framework"
HOMEPAGE="http://www.rubyonrails.org"

LICENSE="MIT"
SLOT="${RAILS_PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x64-solaris ~x86-solaris"

IUSE=""

RDEPEND=">=app-admin/eselect-rails-0.16"

ruby_add_rdepend "
	!<dev-ruby/rails-3.0.4-r4
	dev-ruby/actionmailer:${RAILS_PV}
	dev-ruby/actionpack:${RAILS_PV}
	dev-ruby/activerecord:${RAILS_PV}
	dev-ruby/activeresource:${RAILS_PV}
	dev-ruby/activesupport:${RAILS_PV}
	dev-ruby/bundler
	dev-ruby/railties:${RAILS_PV}"

all_ruby_install() {
	all_fakegem_install

	ruby_fakegem_binwrapper rails rails-${PV}
}

pkg_postinst() {
	elog "To select between slots of rails, use:"
	elog "\teselect rails"

	eselect rails update
}

pkg_postrm() {
	eselect rails update
}
