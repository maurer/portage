# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils autotools-multilib

DESCRIPTION="Debian SBuild"
HOMEPAGE=""
SRC_URI="http://ftp.de.debian.org/debian/pool/main/s/${PN}/${PN}_${PV}.orig.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=">=dev-util/debhelper-7.0.0 sys-apps/groff dev-perl/Exception-Class dev-perl/Filesys-Df perl-core/IO-Zlib dev-perl/MIME-Lite"
RDEPEND="${DEPEND}"
