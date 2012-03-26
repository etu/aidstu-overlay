# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

DESCRIPTION="Etu's daily work-environment"
HOMEPAGE="http://elis.nu/"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="X"

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
	
	dev-vcs/mercurial
	
	net-analyzer/ifstat
	net-analyzer/netcat6
	net-analyzer/traceroute
	
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

RDEPEND="${RDEPEND}
	X? (
		app-editors/emacs[X,gtk]
		
		net-im/gajim[X,crypt,jingle]
		
		x11-terms/rxvt-unicode[256-color,perl]
		
		app-text/evince
		
		www-client/firefox
		www-client/chromium
		
		x11-misc/parcellite
	)
"

DEPEND="${RDEPEND}"

