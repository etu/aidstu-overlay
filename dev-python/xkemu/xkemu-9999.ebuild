# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

inherit git-2 eutils distutils

DESCRIPTION="Fake keypresses in X from Python"
HOMEPAGE="http://github.com/adisbladis/xkemu"
SRC_URI=""
EGIT_REPO_URI="git://github.com/adisbladis/xkemu.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND=">=dev-lang/python-2"

src_unpack() {
    git-2_src_unpack
}

src_prepare() {
    distutils_src_prepare
}

src_compile() {
    distutils_src_compile
}

src_install() {
    distutils_src_install
}
