# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	thing_exporter
PORTVERSION=	0.5.0
DISTVERSIONPREFIX=v
CATEGORIES=	comms
PORTREVISION=	1

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for Weather Underground forecast

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/thing_exporter

USE_RC_SUBR=	thing_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/thing_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
