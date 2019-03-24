# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	junos_exporter
PORTVERSION=	1.0.0
DISTVERSIONPREFIX=v
CATEGORIES=	net

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for Junos

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/junos_exporter

USE_RC_SUBR=	junos_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/junos_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
