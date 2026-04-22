# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	nut_exporter
PORTVERSION=	0.0.6
PORTREVISION=	2
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Prometheus Exporter for NUT
WWW=		https://github.com/zachfi/nut_exporter

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi
GH_PROJECT=	nut_exporter

GO_MODULE=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/nut_exporter

USE_RC_SUBR=	nut_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/nut_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
