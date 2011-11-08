# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

USE_RUBY="ruby18"

RUBY_FAKEGEM_BINWRAP=""

RUBY_FAKEGEM_EXTRADOC="README CHANGELOG"
RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="ruby bindings for OpenBSD's bcrypt() password hashing algorithm."
HOMEPAGE="http://bcrypt-ruby.rubyforge.org"

LICENSE="BSD-4"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

each_ruby_configure() {
	case ${RUBY} in
		*ruby18)
		    ${RUBY} -Cext/mri extconf.rb || die "extconf.rb failed"
			;;
	esac
}

each_ruby_compile() {
	case ${RUBY} in
		*ruby18)
			emake -Cext/mri || die "emake failed"
			cp ext/mri/bcrypt_ext.so lib/ || die
			;;
	esac
}
