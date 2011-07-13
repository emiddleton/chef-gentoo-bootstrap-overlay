# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit distutils flag-o-matic git

#EGIT_REPO_URI="git://github.com/emiddleton/WAL-E.git"
EGIT_REPO_URI="git://github.com/heroku/WAL-E.git"

DESCRIPTION="A S3 based WAL-shipping disaster recovery and standby toolkit"
HOMEPAGE="https://github.com/emiddleton/WAL-E"
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools"
RDEPEND="${DEPEND} net-misc/s3cmd
	sys-block/mbuffer
	dev-libs/openssl
	app-arch/lzop
	dev-python/argparse"

