# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit git-2 eutils distutils

DESCRIPTION="Svtplay-dl"
HOMEPAGE="https://github.com/spaam/svtplay-dl"
SRC_URI=""
EGIT_REPO_URI="git://github.com/spaam/svtplay-dl.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.* *-jython"
DISTUTILS_USE_SEPARATE_SOURCE_DIRECTORIES="1"
RDEPEND=">=dev-lang/python-2"

src_compile() {
	python setup.py install --prefix=${D}
#	distutils_src_compile
}

#src_install() {
#	distutils_src_install
#}

