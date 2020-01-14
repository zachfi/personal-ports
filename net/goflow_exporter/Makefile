# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	goflow_exporter
PORTVERSION=	0.1.1
PORTREVISION=	0
DISTVERSIONPREFIX=v
CATEGORIES=	net

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for IPFIX flows

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/goflow_exporter

USE_RC_SUBR=	goflow_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/goflow_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
