# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	nodemanager
PORTVERSION=	0.13.4
PORTREVISION=	0
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	A Kubernetes controller for node management

LICENSE=	MIT

USES=		go:1.26

USE_GITHUB=	yes
GH_ACCOUNT=	zachfi
GH_PROJECT=	nodemanager

GO_MODULE=	github.com/${GH_ACCOUNT}/${GH_PROJECT}

PLIST_FILES=	bin/nodemanager

USE_RC_SUBR=	nodemanager

do-build:
	cd ${WRKSRC} && ${SETENV} \
		HOME=${WRKDIR} \
		PATH=${WRKDIR}/.bin:${PATH} \
		GO111MODULE=on \
		GOPATH=${WRKDIR} \
		GOPROXY=off \
		CGO_ENABLED=1 \
		CGO_CFLAGS="-I${LOCALBASE}/include" \
		CGO_LDFLAGS="-L${LOCALBASE}/lib" \
		GOTMPDIR=${WRKDIR} \
		${GO_CMD} build \
		-mod=vendor \
		-buildmode=exe \
		-trimpath \
		-buildvcs=false \
		-ldflags='-X main.version=v${PORTVERSION} -X main.goos=freebsd -X main.goarch=${ARCH}' \
		-o ${WRKDIR}/bin/nodemanager \
		${GO_MODULE}/cmd

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/nodemanager ${STAGEDIR}${PREFIX}/bin/nodemanager

.include <bsd.port.mk>
