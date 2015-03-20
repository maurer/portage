# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils findlib versionator
MY_PN="ocaml-${PN}"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Ocaml syntax extension for Erlang-style bitstrings and matching over bitstrings"
HOMEPAGE="http://code.google.com/p/bitstring/"
SRC_URI="http://bitstring.googlecode.com/files/${MY_P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

DEPEND="sys-process/time
  dev-lang/ocaml"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A}
    fi
	mv ${MY_P} ${S}
}

src_compile() {
	econf || die "configure failed"
	emake -j1 || die "make failed"

	if use examples ; then
		emake examples || die "examples failed"
	fi
}

src_install() {
	findlib_src_install

	dodoc COPYING COPYING.LIB README TODO

	if use examples
	then
		insinto /usr/share/doc/${PF}/
		doins -r "${S}"/examples || die "examples failed"
	fi
}
