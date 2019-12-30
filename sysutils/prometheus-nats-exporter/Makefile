# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	prometheus-nats-exporter
PORTVERSION=	0.6.0
PORTREVISION=	3
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for NATS.io

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	nats-io

GO_PKGNAME=	github.com/${GH_ACCOUNT}/prometheus-nats-exporter
GO_TARGET=	github.com/${GH_ACCOUNT}/prometheus-nats-exporter

PLIST_FILES=	bin/prometheus-nats-exporter

USE_RC_SUBR=	nats_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/prometheus-nats-exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
