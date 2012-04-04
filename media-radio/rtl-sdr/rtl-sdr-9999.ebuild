# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: media-radio/gnuradio/gnuradio-9999.ebuild$

EAPI="4"
inherit git-2

DESCRIPTION="RTL-SDR"
HOMEPAGE="http://sdr.osmocom.org/trac/wiki/rtl-sdr"

SRC_URI=""
EGIT_REPO_URI="git://git.osmocom.org/rtl-sdr.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=""

src_unpack() {
    git-2_src_unpack
}

src_compile() {
	cd ./src/
	make
}

src_install() {
	mkdir -p ${D}usr/bin/
	cp src/rtl-sdr ${D}usr/bin/
}

