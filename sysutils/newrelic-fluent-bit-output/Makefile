# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	newrelic-fluent-bit-output
PORTVERSION=	g20190926
CATEGORIES=	sysutils

MAINTAINER=	zach@zleslie.info
COMMENT=	NewRelic output plugin for fluent-bit

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git fluent-bit:sysutils/fluent-bit go:lang/go

USES=		go go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	newrelic
GH_TAGNAME=	38a6228e

GO_PKGNAME=	github.com/${GH_ACCOUNT}/${PORTNAME}
GO_TARGET=	github.com/${GH_ACCOUNT}/${PORTNAME}

PLIST_FILES=	lib/out_newrelic.so

do-build:
	@( cd ${WRKSRC}; \
		${SETENV} ${MAKE_ENV} GOFLAGS="-mod=vendor" go build -buildmode=c-shared -o out_newrelic.so . ; \
		)

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/src/github.com/newrelic/newrelic-fluent-bit-output/out_newrelic.so ${STAGEDIR}${PREFIX}/lib

.include <bsd.port.mk>
