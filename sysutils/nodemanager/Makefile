# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	nodemanager
PORTVERSION=	0.18.1
PORTREVISION=	0
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

# Upstream git commit for v${PORTVERSION}; update alongside PORTVERSION so
# `nodemanager version` reports the real SHA instead of the unexpanded
# $$Format:%H$$ placeholder baked into the release tarball.
GIT_COMMIT=	7570664447f3d7c2531e157edbd1104a8455a694
BUILD_DATE!=	date -u +%Y-%m-%dT%H:%M:%SZ

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
		-ldflags='-X main.version=v${PORTVERSION} -X main.goos=freebsd -X main.goarch=${ARCH} -X main.gitCommit=${GIT_COMMIT} -X main.buildDate=${BUILD_DATE}' \
		-o ${WRKDIR}/bin/nodemanager \
		${GO_MODULE}/cmd

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/nodemanager ${STAGEDIR}${PREFIX}/bin/nodemanager

.include <bsd.port.mk>
