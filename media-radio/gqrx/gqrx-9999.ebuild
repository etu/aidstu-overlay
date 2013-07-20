# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit base git-2 eutils qt4-r2

DESCRIPTION="Software defined radio receiver powered by GNU Radio and Qt"
HOMEPAGE="http://www.oz9aec.net/index.php/gnu-radio/gqrx-sdr"

EGIT_REPO_URI="git://github.com/csete/gqrx.git"

LICENSE="GPL-2 BSD"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE="rtlsdr"

DEPEND="dev-qt/qtcore
	dev-qt/qtsvg
	dev-qt/qtgui
	rtlsdr? ( net-wireless/gr-osmosdr net-wireless/rtl-sdr )
	net-wireless/gnuradio[alsa,examples,fcd,filter,performance-counters,utils,wavelet]
	dev-libs/boost"

RDEPEND=""

src_unpack() {
	git-2_src_unpack
}

src_prepare() {
	eqmake4
}

src_configure() {
	true
}

src_install() {
	newbin gqrx gqrx
}
