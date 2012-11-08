# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="CSS Post-Processor for ie compatability"
HOMEPAGE="http://blesscss.com/"

GITHUB_USER="paulyoung"
GITHUB_PROJECT="bless.js"

inherit python vcs-snapshot
KEYWORDS="~amd64"
SRC_URI="https://github.com/${GITHUB_USER}/${GITHUB_PROJECT}/tarball/v${PV} -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
IUSE=""

DEPEND="net-libs/nodejs"
RDEPEND="${DEPEND}"

src_install() {
	local MYLIB=$(get_libdir)
	mkdir -p "${ED}"/usr/bin
	mkdir -p "${ED}"/usr/"${MYLIB}"/node_modules/bless
	cp -R * "${ED}"/usr/"${MYLIB}"/node_modules/bless/ || die "Failed to copy stuff"
	dosym "${ED}"/usr/"${MYLIB}"/node_modules/bless/bin/blessc /usr/bin/blessc
}
