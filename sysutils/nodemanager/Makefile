# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	nodemanager
PORTVERSION=	0.2.0
PORTREVISION=	5
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	A Kubernetes controller for node management

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:1.22,modules

USE_GITHUB=	yes
GH_ACCOUNT=	zachfi
GH_PROJECT=	nodemanager

GO_MODULE=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_PKGNAME=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd
#GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}/cmd
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/nodemanager

USE_RC_SUBR=	nodemanager

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/nodemanager ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
