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

src_compile() {
	git checkout -q 1.2 > /dev/null
	
	if [ "$?" == "0" ]; then
		make all
		DESTDIR=$(echo ${D} | sed 's/\/$//') make install
	else
		einfo "git checkout to get exactly the 1.2 tag failed somehow"
		exit 1
	fi
}
