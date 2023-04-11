# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	weigh
PORTVERSION=	1.0.3
PORTREVISION=	4
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Count and sort directories by byte weight

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/weigh

USE_RC_SUBR=	weigh_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/weigh ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
