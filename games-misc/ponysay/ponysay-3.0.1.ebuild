# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI='4'

inherit git-2 eutils

DESCRIPTION='Pony wrapper for cowsay.'
HOMEPAGE='https://github.com/erkin/ponysay'

SRC_URI=''
EGIT_REPO_URI='git://github.com/erkin/ponysay.git'
EGIT_COMMIT=$PV

LICENSE='WTFPL-2'
SLOT='0'
KEYWORDS='x86 amd64'
IUSE='-info -bash-completion -fish-completion -zsh-completion -strict-license'

DEPEND='info? ( sys-apps/texinfo )
		app-arch/gzip
		sys-devel/make
		sys-apps/sed'

RDEPEND='sys-apps/coreutils
		>=dev-lang/python-3.0
		fish-completion? ( || ( app-shells/fishfish app-shells/fish ) )
		zsh-completion?  ( app-shells/zsh )'

src_compile() {
	if [ $(use_with strict-license) = "--with-strict-license" ]; then
		freedom='--freedom=strict'
	else
		freedom='--freedom=partial'
	fi

	python3 setup.py --everything $freedom                      \
		--without-pdf                                       \
		$(use_with bash-completion | sed 's/-completion//') \
		$(use_with fish-completion | sed 's/-completion//') \
		$(use_with zsh-completion  | sed 's/-completion//') \
		$(use_with info)                                    \
			build
}

src_install() {
	python3 setup.py --everything $freedom                      \
		--without-pdf                                       \
		--dest-dir=${D}                                     \
		$(use_with bash-completion | sed 's/-completion//') \
		$(use_with fish-completion | sed 's/-completion//') \
		$(use_with zsh-completion  | sed 's/-completion//') \
		$(use_with info)                                    \
			prebuilt
}
