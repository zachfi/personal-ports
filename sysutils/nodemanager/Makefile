# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	nodemanager
PORTVERSION=	0.1.18
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	A Kubernetes controller for node management

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/nodemanager

USE_RC_SUBR=	nodemanager

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/nodemanager ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
