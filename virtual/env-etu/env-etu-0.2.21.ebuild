# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

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
	
	app-text/sloccount
	
	app-misc/screen
	app-misc/vlock
	
	app-portage/eix
	app-portage/layman
	app-portage/gentoolkit
	
	app-shells/fish
	
	app-text/wgetpaste
	
	dev-python/bpython
	
	dev-util/strace
	dev-util/source-highlight
	
	dev-vcs/mercurial
	
	games-misc/ponysay
	
	net-analyzer/ifstat
	net-analyzer/netcat6
	net-analyzer/traceroute
	
	net-dns/bind-tools
	
	net-misc/curl
	net-misc/dhcpcd
	net-misc/mosh
	net-misc/ntp
	net-misc/telnet-bsd
	net-misc/youtube-dl
	net-misc/whois
	
	sys-apps/ack
	sys-apps/less
	sys-apps/pv
	sys-apps/the_silver_searcher
	
	sys-apps/svorak
	
	sys-apps/pciutils
	sys-apps/usbutils
	
	sys-fs/ncdu
	sys-fs/sshfs-fuse
	
	sys-process/lsof
	sys-process/htop
	sys-process/time
	
	www-client/links
"

RDEPEND="${RDEPEND}
	X? (
		app-editors/emacs[X,gtk]
		
		net-im/gajim[X,crypt,jingle]
		
		x11-terms/rxvt-unicode[256-color,perl]
		
		app-text/evince
		
		media-fonts/arphicfonts
		media-fonts/bitstream-cyberbit
		media-fonts/corefonts
		media-fonts/dejavu
		media-fonts/droid
		media-fonts/freefonts
		media-fonts/intlfonts
		media-fonts/ipamonafont
		media-fonts/ja-ipafonts
		media-fonts/proggy-fonts
		media-fonts/roboto
		media-fonts/takao-fonts
		media-fonts/terminus-font
		media-fonts/wqy-microhei
		media-fonts/wqy-zenhei
		
		media-gfx/feh
		media-gfx/scrot
		
		media-sound/alsa-utils
		
		media-video/mplayer2
		media-video/rtmpdump
		
		net-im/gajim
		
		www-client/firefox
		www-client/chromium
		
		x11-base/xorg-x11
		
		x11-misc/dmenu
		x11-misc/parcellite
		x11-misc/screen-message
		x11-misc/slock
		x11-misc/xclip
		x11-misc/xdotool
		
		x11-themes/gnome-themes
		x11-themes/gnome-themes-extras
		lxde-base/lxappearance
		
		x11-wm/herbstluftwm
		xfce-base/xfce4-panel
		x11-misc/dzen
		
		
		x11-wm/i3
		x11-misc/i3status
		dev-lang/lua
	)
"

DEPEND="${RDEPEND}"

