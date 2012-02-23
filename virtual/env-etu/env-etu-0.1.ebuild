# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-base/xorg-x11/xorg-x11-7.4-r1.ebuild,v 1.9 2010/09/13 01:03:56 josejx Exp $

EAPI="2"

DESCRIPTION="Etu's daily work-environment"
HOMEPAGE="http://elis.nu/"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="${RDEPEND}
	app-admin/sudo[offensive]
	
	app-editors/nano
	app-editors/emacs
	app-emacs/emacs-daemon
	app-emacs/php-mode
	
	app-misc/screen
	app-misc/vlock
	
	app-portage/eix
	app-portage/gentoolkit
	
	app-shells/fish
	
	net-analyzer/ifstat
	net-analyzer/netcat6
	
	net-dns/bind-tools
	
	net-misc/dhcpcd
	net-misc/ntp
	net-misc/youtube-dl
	
	sys-apps/ack
	sys-apps/less
	
	sys-apps/pciutils
	sys-apps/usbutils
	
	sys-fs/sshfs-fuse
	
	sys-process/htop
	"

DEPEND="${RDEPEND}"

