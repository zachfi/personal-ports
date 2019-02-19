# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	openldap_exporter
DISTVERSION=	20190218

CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	Prometheus Exporter for OpenLDAP

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go
USE_GITHUB=	yes

GH_ACCOUNT=	xaque208
GH_TAGNAME=	a11bffb

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	build/openldap_exporter-freebsd

USE_RC_SUBR=	openldap_exporter

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/openldap_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
