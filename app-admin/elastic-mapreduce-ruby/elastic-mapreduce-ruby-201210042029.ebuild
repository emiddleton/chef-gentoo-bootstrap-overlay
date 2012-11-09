# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Amazon Elastic MapReduce Ruby Client"
HOMEPAGE="http://aws.amazon.com/developertools/2264"
SRC_URI="http://elasticmapreduce.s3.amazonaws.com/elastic-mapreduce-ruby.zip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-arch/unzip
  dev-lang/ruby:1.8[ssl]"
RDEPEND="${DEPEND}"

src_unpack() {
	mkdir "$S"
	cd "$S"
	unpack ${A}
}

src_prepare() {
	sed -i -e "s:$LOAD_PATH.unshift File.dirname(__FILE__):$LOAD_PATH.unshift '/opt/${PN}/lib':" elastic-mapreduce || die
	sed -i -e '$s:^ruby:exec ruby18:' elastic-mapreduce || die
}

src_install() {
	dodir /opt/${PN}
	insinto /opt/${PN}/lib
	doins -r "${S}"/*.rb "${S}"/amazon "${S}"/json "${S}"/uuidtools
    doins "${S}/cacert.pem"

	exeinto /opt/${PN}/bin
	doexe "${S}"/elastic-mapreduce

	insinto /usr/share/${PN}
    doins -r samples tests

	dodir /etc/env.d
	cat - > "${T}"/99${PN} <<EOF
ELASTIC_MAPREDUCE_RUBY_HOME=/opt/${PN}
PATH=/opt/${PN}/bin
ROOTPATH=/opt/${PN}/bin
EOF
	doenvd "${T}"/99${PN}

	dodoc NOTICE.txt README CHANGELOG
}

pkg_postinst() {
	ewarn "Remember to run: env-update && source /etc/profile if you plan"
	ewarn "to use these tools in a shell before logging out (or restarting"
	ewarn "your login manager)"
	elog
	elog " You need to create the credentials file"
	elog
	elog "  $ cat > credentials.json"
    elog "    {"
    elog "      \"access-id\": \"<insert your AWS access id here>\","
	elog "      \"private-key\": \"<insert your AWS secret access key here>\","
	elog "      \"key-pair\": \"<insert the name of your Amazon ec2 key-pair here>\","
	elog "      \"key-pair-file\": \"<insert the path to the .pem file for your Amazon ec2 key pair here>\","
	elog "      \"region\": \"<The region where you wish to launch your job flows.>\""
	elog "      // Should be one of us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, or ap-northeast-1, sa-east-1>\""
	elog "    }"
	elog
}
