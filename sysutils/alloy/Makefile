PORTNAME=	alloy
PORTVERSION=	1.0.0
PORTREVISION=	1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	contact@zach.fi
COMMENT=	Grafana Agent for observability swiss-army

LICENSE=	MIT

BUILD_DEPENDS=	git:devel/git

USES=		go:1.22:modules
USE_GITHUB=	yes

GH_ACCOUNT=	grafana
GH_PROJECT=	alloy

GO_TARGET=	github.com/${GH_ACCOUNT}/${GH_PROJECT}
GO_BUILDFLAGS=	-ldflags='-X github.com/grafana/alloy/internal/build.Version=v${PORTVERSION}' -mod=vendor

USE_RC_SUBR=	alloy

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/bin/alloy ${STAGEDIR}${PREFIX}/bin/alloy
	# ${INSTALL_DATA} ${WRKSRC}/clients/cmd/promtail/promtail-local-config.yaml ${STAGEDIR}${PREFIX}/etc/promtail.yaml.sample

.include <bsd.port.mk>
