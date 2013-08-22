# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit distutils eutils git-2

DESCRIPTION="Interactive viewer for Graphviz dot files"
HOMEPAGE="http://code.google.com/p/jrfonseca/wiki/XDot"
EGIT_REPO_URI="https://github.com/jrfonseca/xdot.py.git"

LICENSE="LGPL-2+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/pycairo
	dev-python/pygtk
	media-gfx/graphviz"
RDEPEND="${DEPEND}"
