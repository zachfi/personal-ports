# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	lpk
PORTVERSION=	0.0.1
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	code@zleslie.info
COMMENT=	Read SSH keys from LDAP

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/lpk

do-install:
	${INSTALL_PROGRAM} -m 0700 ${WRKDIR}/bin/lpk ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
