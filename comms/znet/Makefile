# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	znet
PORTVERSION=	0.28.4
PORTREVISION=	6
DISTVERSIONPREFIX=v
CATEGORIES=	comms

MAINTAINER=	zach@zleslie.info
COMMENT=	znet rpc components

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_BUILDFLAGS=	-ldflags='-X main.Version=v${PORTVERSION}' -mod=vendor

PLIST_FILES=	bin/znet

USE_RC_SUBR=	znet timer gitwatch agent harvest builder arpwatch

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/znet ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
