# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

USE_RUBY="ruby18 ruby19"

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_S="emiddleton-${P}"

inherit ruby-fakegem

DESCRIPTION="Simple yet powerful wrapper around ffmpeg to get metadata from movies and do transcoding."
HOMEPAGE="https://github.com/emiddleton/streamio-ffmpeg"

EGIT_REPO_URI="git://github.com/emiddleton/${PN}.git"
EGIT_COMMIT="3a5c51231c8a2ab68ce48163fb40972b82cfb6ea"
EGIT_SOURCEDIR="${WORKDIR}/all/emiddleton-${P}"
SRC_URI=""

inherit git-2

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
