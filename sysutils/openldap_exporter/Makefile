# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	openldap_exporter
PORTVERSION=	1.1.1
PORTREVISION=	4
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Prometheus Exporter for OpenLDAP

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	zachfi

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	bin/openldap_exporter

USE_RC_SUBR=	openldap_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/openldap_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
