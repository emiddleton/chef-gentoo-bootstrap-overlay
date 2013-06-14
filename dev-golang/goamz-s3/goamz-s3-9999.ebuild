# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

EBZR_REPO_URI="lp:goamz"

inherit eutils multilib bzr

DESCRIPTION="goamz - Go packages to interact with the Amazon S3 Web Service."
HOMEPAGE="https://wiki.ubuntu.com/goamz"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	mkdir -p ${D}/usr/$(get_libdir)/go/src/pkg/launchpad.net/goamz
  	cp -r ${S}/s3 ${D}/usr/$(get_libdir)/go/src/pkg/launchpad.net/goamz
}
