# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Open-source DVD to MPEG-4 converter"
HOMEPAGE="http://handbrake.fr/"
SRC_URI="
	x86? (
			https://edge.launchpad.net/~stebbins/+archive/handbrake-snapshots/+files/handbrake-cli_${PV}svnppa1~lucid1_i386.deb
			https://edge.launchpad.net/~stebbins/+archive/handbrake-snapshots/+files/handbrake-gtk_${PV}svnppa1~lucid1_i386.deb
	)
	amd64? (
			https://edge.launchpad.net/~stebbins/+archive/handbrake-snapshots/+files/handbrake-cli_${PV}svnppa1~lucid1_amd64.deb
			https://edge.launchpad.net/~stebbins/+archive/handbrake-snapshots/+files/handbrake-gtk_${PV}svnppa1~lucid1_amd64.deb
	)"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="app-arch/bzip2"
RDEPEND="${DEPEND}"

src_unpack(){
	mkdir ${S}
	cd ${WORKDIR}
	cp ${FILESDIR}/deb2tarbz2 .
	chmod +x deb2tarbz2
	for a in ${A} ; do
		cp ${DISTDIR}/${a} ${WORKDIR} 
		./deb2tarbz2 ${a}
	    tar -xjvf ${a//.deb/.tar.bz2} -C ${S}
	done
}

src_install(){
	cp -r usr ${D}
}
