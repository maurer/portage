# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EGIT_REPO_URI="git://github.com/mjambon/${PN}.git http://github.com/mjambon/${PN}.git"
inherit base git-2

DESCRIPTION="cpp for OCaml"
HOMEPAGE="http://mjambon.com/cppo.html"
SRC_URI=""

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/ocaml[ocamlopt]"
RDEPEND="${DEPEND}"
