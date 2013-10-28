# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit base autotools

DESCRIPTION="fish is the Friendly Interactive SHell"
HOMEPAGE="http://fishshell.com/"
SRC_URI="http://fishshell.com/files/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="X"

DEPEND="sys-libs/ncurses
	sys-devel/bc
	sys-devel/gettext
	www-client/htmlview
	X? ( x11-misc/xsel )"
RDEPEND="${DEPEND}"

src_prepare() {
	eautoreconf
}

src_configure() {
	econf --bindir="${EPREFIX}/bin"
}

pkg_postinst() {
	elog "fish is now installed on your system."
	elog "To run fish, type 'fish' in your terminal."
	elog
	elog "To use fish as your login shell:"
	elog "* add the line '${EPREFIX}/bin/${PN}'"
	elog "* to the file '${EPREFIX}/etc/shells'."
	elog "* use the command 'chsh -s ${EPREFIX}/bin/${PN}'."
	elog
	elog "To set your colors, run 'fish_config'"
	elog "To scan your man pages for completions, run 'fish_update_completions'"
	elog "To autocomplete command suggestions press Ctrl + F or right arrow key."
	elog
	elog "Have fun!"
}
