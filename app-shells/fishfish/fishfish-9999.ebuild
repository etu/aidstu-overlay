# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit base autotools git-2 eutils

DESCRIPTION="fishfish is a fork of fish, the Friendly Interactive SHell"
HOMEPAGE="http://ridiculousfish.com/shell/"

EGIT_REPO_URI="git://github.com/fish-shell/fish-shell.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="X"

DEPEND="app-doc/doxygen
	sys-libs/ncurses
	sys-devel/bc
	sys-devel/gettext
	www-client/htmlview
	X? ( x11-misc/xsel )
	!app-shells/fish"

RDEPEND=""
src_prepare() {
	eautoconf
}

src_configure() {
	# --without-xsel is because the dev bundles xsel with
	# the tarball for some odd reason, turns off the compiling of the
	# bundled version
	econf --without-xsel
}

pkg_postinst() {
	elog
	elog "To use fish as your default shell, you need to add /bin/fish"
	elog "to /etc/shells and change your login shell to /bin/fish."
	elog
}
