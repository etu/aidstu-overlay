# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit git-2

DESCRIPTION="Convert a directory tree from flac to ogg and copy the rest"
HOMEPAGE="http://github.com/adisbladis/flac2ogg"
SRC_URI=""
EGIT_REPO_URI="git://github.com/adisbladis/flac2ogg.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=">=dev-lang/python-3
media-sound/vorbis-tools[flac]"

src_configure() {
    true
}

src_unpack() {
    git-2_src_unpack
}

src_install() {
    newbin flac2ogg.py flac2ogg
}
