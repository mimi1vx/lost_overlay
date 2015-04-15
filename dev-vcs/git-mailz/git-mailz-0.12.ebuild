# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="git-mantle - Generate an overview of changes on a branch"
HOMEPAGE="https://github.com/roman-neuhauser/git-mailz/"

SRC_URI="http://codex.sigpipe.cz/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"

KEYWORDS="~x86 ~amd64"

DEPEND=""

RDEPEND="virtual/mta
		 dev-vcs/git
	     app-shells/zsh"

S=${WORKDIR}/${P}

src_install(){
	emake PREFIX="${ED}/usr" install
}

