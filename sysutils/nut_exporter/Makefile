# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	nut_exporter
PORTVERSION=	0.0.6
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for NUT

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/nut_exporter

USE_RC_SUBR=	nut_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/nut_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
