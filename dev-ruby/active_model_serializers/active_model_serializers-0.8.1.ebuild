# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md DESIGN.textile"
RUBY_FAKEGEM_EXTRAINSTALL="lib bench"

inherit ruby-fakegem

DESCRIPTION="model serialization gem for rails"
HOMEPAGE="https://github.com/rails-api/active_model_serializers"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
