# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	openweathermap_exporter
PORTVERSION=	0.0.5
DISTVERSIONPREFIX=v
CATEGORIES=	astro

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for Open Weather Map

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/openweathermap_exporter

USE_RC_SUBR=	openweathermap_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/openweathermap_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
