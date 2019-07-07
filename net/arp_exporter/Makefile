# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	arp_exporter
PORTVERSION=	2.0.1
DISTVERSIONPREFIX=v
CATEGORIES=	net

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for ARP Tables

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/arp_exporter

USE_RC_SUBR=	arp_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/arp_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
