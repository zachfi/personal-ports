# Created by: Zach Leslie <ports@zleslie.info>

PORTNAME=	pf_exporter
PORTVERSION=	0.1.0
PORTREVISION=	0
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	code@zach.fi
COMMENT=	Export Prometheus metrics from PF

LICENSE=	APACHE20

BUILD_DEPENDS=	git:devel/git

USES=		go:modules
USE_GITHUB=	yes

GH_ACCOUNT=	mischief
GH_PROJECT=	pf_exporter

#GO_MODULE=	github.com/${GH_ACCOUNT}/${GH_PROJECT}:${PREFIX}/bin/pf_exporter
#GO_BUILDFLAGS=	-mod=vendor

GH_TUPLE=       \
                beorn7:perks:v1.0.1:beorn7_perks/vendor/github.com/beorn7/perks \
                cespare:xxhash:v2.3.0:cespare_xxhash/vendor/github.com/cespare/xxhash/v2 \
                golang:sys:v0.22.0:golang_sys/vendor/golang.org/x/sys \
                klauspost:compress:v1.17.9:klauspost_compress/vendor/github.com/klauspost/compress \
                mischief:gopf:ccbbbc6db7da:mischief_gopf/vendor/github.com/mischief/gopf \
                munnerz:goautoneg:a7dc8b61c822:munnerz_goautoneg/vendor/github.com/munnerz/goautoneg \
                prometheus:client_golang:v1.20.4:prometheus_client_golang/vendor/github.com/prometheus/client_golang \
                prometheus:client_model:v0.6.1:prometheus_client_model/vendor/github.com/prometheus/client_model \
                prometheus:common:v0.55.0:prometheus_common/vendor/github.com/prometheus/common \
                prometheus:procfs:v0.15.1:prometheus_procfs/vendor/github.com/prometheus/procfs
                #::v1.34.2:_/vendor/google.golang.org/protobuf

PLIST_FILES=	bin/pf_exporter

do-install:
	${INSTALL_PROGRAM} -m 0500 ${WRKDIR}/bin/pf_exporter ${STAGEDIR}${PREFIX}/bin

.include <bsd.port.mk>
