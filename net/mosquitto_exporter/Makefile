# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	mosquitto-exporter
PORTVERSION=	0.5.0
PORTREVISION=	2
DISTVERSIONPREFIX=v
CATEGORIES=	net

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for Mosquitto

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	sapcc

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/mosquitto-exporter

USE_RC_SUBR=	mosquitto_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/mosquitto-exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
