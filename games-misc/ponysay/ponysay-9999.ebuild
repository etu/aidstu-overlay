# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit git-2 eutils

DESCRIPTION="Pony wrapper for cowsay."
HOMEPAGE="https://github.com/erkin/ponysay"

SRC_URI=""
EGIT_REPO_URI="git://github.com/erkin/ponysay.git"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="games-misc/cowsay"

src_unpack() {
	git-2_src_unpack
}

src_compile() {
	make all
	DESTDIR=$(echo ${D} | sed 's/\/$//') make install
}
