# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-java/sun-jdk/sun-jdk-1.6.0.26.ebuild,v 1.3 2011/06/18 11:49:39 hwoarang Exp $

inherit versionator java-vm-2 eutils pax-utils

UPDATE="$(get_version_component_range 4)"
UPDATE="${UPDATE#0}"
MY_PV="$(get_version_component_range 2)u${UPDATE}"
X86_AT="jdk-${MY_PV}-dlj-linux-i586.bin"
AMD64_AT="jdk-${MY_PV}-dlj-linux-amd64.bin"

DESCRIPTION="Sun's Java SE Development Kit"
HOMEPAGE="http://java.sun.com/javase/6/"
URL_BASE="http://download.java.net/dlj/binaries"
SRC_URI="x86? ( ${URL_BASE}/${X86_AT} )
		amd64? ( ${URL_BASE}/${AMD64_AT} )"
SLOT="1.6"
LICENSE="dlj-1.1"
KEYWORDS="amd64 x86"
RESTRICT="strip"
IUSE="X alsa derby doc examples jce nsplugin odbc"

QA_TEXTRELS_x86="opt/${P}/jre/lib/i386/motif21/libmawt.so
	opt/${P}/jre/lib/i386/libdeploy.so
	opt/${P}/jre/lib/i386/client/libjvm.so
	opt/${P}/jre/lib/i386/server/libjvm.so"
QA_DT_HASH="opt/${P}/.*"

DEPEND="jce? ( =dev-java/sun-jce-bin-1.6.0* )"
RDEPEND="${DEPEND}
	doc? ( =dev-java/java-sdk-docs-1.6.0* )
	sys-libs/glibc
	alsa? ( media-libs/alsa-lib )
	X? (
			x11-libs/libXext
			x11-libs/libXi
			x11-libs/libXp
			x11-libs/libXtst
			amd64? ( x11-libs/libXt )
			x11-libs/libX11
	)
	odbc? ( dev-db/unixODBC )"

JAVA_PROVIDE="jdbc-stdext jdbc-rowset"

S="${WORKDIR}/jdk$(replace_version_separator 3 _)"

src_unpack() {
	sh "${DISTDIR}"/${A} --accept-license --unpack || die "Failed to unpack"
}

src_compile() {
	# Set PaX markings on all JDK/JRE executables to allow code-generation on
	# the heap by the JIT compiler. This needs to be done before CDS - #215225
	pax-mark m $(list-paxables "${S}"{,/jre}/bin/*)

	# see bug #207282
	if use x86; then
		einfo "Creating the Class Data Sharing archives"
		"${S}"/bin/java -client -Xshare:dump || die
		"${S}"/bin/java -server -Xshare:dump || die
	fi
}

src_install() {
	local dirs="bin include jre lib man"

	use derby && dirs="${dirs} db"

	dodir /opt/${P}

	cp -pPR $dirs "${D}/opt/${P}/" || die "failed to copy"
	dodoc COPYRIGHT || die
	dohtml README.html || die

	cp -pP src.zip "${D}/opt/${P}/" || die

	if use examples; then
		cp -pPR demo sample "${D}/opt/${P}/" || die
	fi

	if use jce; then
		cd "${D}/opt/${P}/jre/lib/security"
		dodir /opt/${P}/jre/lib/security/strong-jce
		mv "${D}"/opt/${P}/jre/lib/security/US_export_policy.jar \
			"${D}"/opt/${P}/jre/lib/security/strong-jce || die
		mv "${D}"/opt/${P}/jre/lib/security/local_policy.jar \
			"${D}"/opt/${P}/jre/lib/security/strong-jce || die
		dosym /opt/sun-jce-bin-1.6.0/jre/lib/security/unlimited-jce/US_export_policy.jar /opt/${P}/jre/lib/security/
		dosym /opt/sun-jce-bin-1.6.0/jre/lib/security/unlimited-jce/local_policy.jar /opt/${P}/jre/lib/security/
	fi

	if use nsplugin; then
		local plugin_dir="ns7-gcc29"
		if has_version '>=sys-devel/gcc-3' ; then
			plugin_dir="ns7"
		fi

		if use x86 ; then
			install_mozilla_plugin /opt/${P}/jre/lib/i386/libnpjp2.so
			install_mozilla_plugin /opt/${P}/jre/plugin/i386/$plugin_dir/libjavaplugin_oji.so old_oji
		else
			install_mozilla_plugin /opt/${P}/jre/lib/amd64/libnpjp2.so
		fi
	fi

	# create dir for system preferences
	dodir /opt/${P}/jre/.systemPrefs
	# Create files used as storage for system preferences.
	touch "${D}"/opt/${P}/jre/.systemPrefs/.system.lock
	chmod 644 "${D}"/opt/${P}/jre/.systemPrefs/.system.lock
	touch "${D}"/opt/${P}/jre/.systemPrefs/.systemRootModFile
	chmod 644 "${D}"/opt/${P}/jre/.systemPrefs/.systemRootModFile

	if [[ -f "${D}"/opt/${P}/jre/plugin/desktop/sun_java.desktop ]]; then
		# install control panel for Gnome/KDE
		# The jre also installs these so make sure that they do not have the same
		# Name
		sed -e "s/\(Name=\)Java/\1 Java Control Panel for Sun JDK ${SLOT}/" \
			-e "s#Exec=.*#Exec=/opt/${P}/jre/bin/ControlPanel#" \
			-e "s#Icon=.*#Icon=/opt/${P}/jre/plugin/desktop/sun_java.png#" \
			"${D}"/opt/${P}/jre/plugin/desktop/sun_java.desktop > \
			"${T}"/sun_jdk-${SLOT}.desktop

		domenu "${T}"/sun_jdk-${SLOT}.desktop
	fi

	# bug #56444
	insinto /opt/${P}/jre/lib/
	newins "${FILESDIR}"/fontconfig.Gentoo.properties fontconfig.properties

	set_java_env
	java-vm_revdep-mask
}

pkg_postinst() {
	# Set as default VM if none exists
	java-vm-2_pkg_postinst

	if use x86 && use nsplugin; then
		elog
		elog "Two variants of the nsplugin are available via eselect java-nsplugin:"
		elog "Note that starting with ${PN}-1.6.0.18-r1 their naming and the default changed,"
		elog "users with the old plugin set are switched to the new default automatically."
		elog "The default ${VMHANDLE} is the new 'plugin2' which works in Firefox 3 (xulrunner-1.9)"
		elog "and newer, the ${VMHANDLE}-old_oji is the old plugin using the OJI API"
		elog "that was removed in Firefox 3.6 (xulrunner-1.9.2)."
		elog "For more info see https://jdk6.dev.java.net/plugin2/"
		elog
	fi

	if use amd64 && use nsplugin; then
		elog
		elog "The amd64 version ships the new 'plugin2' browser plugin which works"
		elog "in Firefox 3+ and other recent browser versions."
		elog "For more info see https://jdk6.dev.java.net/plugin2/"
		elog
	fi
}
