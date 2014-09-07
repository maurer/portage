# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://http.us.debian.org/debian/pool/main/d/dh-make/dh-make_1.20140617_all.deb"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-util/debhelper"
RDEPEND="${DEPEND}"

src_unpack() {
  unpack ${A}
  mkdir ${S}
  tar -xpf data.tar.* -C ${S}
}

src_install() {
  cp -r ${S}/* ${D}
}
