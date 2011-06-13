# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit multilib eutils

DESCRIPTION="Percona XtraBackup is OpenSource online (non-blockable) backup tool for InnoDB and XtraDB engines"
HOMEPAGE="http://www.percona.com/docs/wiki/percona-xtrabackup:start"
SRC_URI="
amd64? ( http://www.percona.com/downloads/XtraBackup/XtraBackup-${PV}/Linux/binary/x86_64/xtrabackup-${PV}.tar.gz )
x86? ( http://www.percona.com/downloads/XtraBackup/XtraBackup-${PV}/Linux/binary/i686/xtrabackup-${PV}.tar.gz )
"

LICENSE="GPL-2 public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-lang/perl
	sys-libs/zlib"

S="${WORKDIR}"

src_install() {
	for i in innobackupex xtrabackup_51 xtrabackup_55 xtrabackup tar4ibd; do
		dobin "${S}"/bin/$i
	done

	dosym /usr/bin/innobackupex /usr/bin/innobackupex-1.5.1
}

