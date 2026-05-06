# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	weigh
PORTVERSION=	1.2.2
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Count and sort directories by byte weight
WWW=		https://github.com/zachfi/weigh

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi
GH_PROJECT=	weigh

GO_MODULE=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}/cmd/weigh

PLIST_FILES=	bin/weigh

USE_RC_SUBR=	weigh

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/weigh ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
