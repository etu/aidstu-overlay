# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit git-2

DESCRIPTION="Reads data from stdin and serves over http"
HOMEPAGE="http://github.com/adisbladis/httpipe"
SRC_URI=""
EGIT_REPO_URI="git://github.com/adisbladis/httpipe.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=">=dev-lang/python-3"

src_configure() {
    true
}

src_unpack() {
    git-2_src_unpack
}

src_install() {
    newbin httpipe.py httpipe
}
