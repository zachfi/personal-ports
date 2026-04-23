--- a/src/ipv6nd.c
+++ b/src/ipv6nd.c
@@ -367,17 +367,25 @@
 	};
 	struct cmsghdr *cm;
 	struct in6_pktinfo pi = { .ipi6_ifindex = ifp->index };
+	const struct ipv6_addr *lla;
 	int s;
 #ifndef __sun
 	struct dhcpcd_ctx *ctx = ifp->ctx;
 #endif
 
-	if (ipv6_linklocal(ifp) == NULL) {
+	lla = ipv6_linklocal(ifp);
+	if (lla == NULL) {
 		logdebugx("%s: delaying Router Solicitation for LL address",
 		    ifp->name);
 		ipv6_addlinklocalcallback(ifp, ipv6nd_sendrsprobe, ifp);
 		return;
 	}
+	/*
+	 * Explicitly set the link-local source address in IPV6_PKTINFO.
+	 * FreeBSD 14.4 rejects RS with an unspecified (::) source when a
+	 * link-local address is already assigned to the interface.
+	 */
+	pi.ipi6_addr = lla->addr;
 
 #ifdef HAVE_SA_LEN
 	dst.sin6_len = sizeof(dst);
