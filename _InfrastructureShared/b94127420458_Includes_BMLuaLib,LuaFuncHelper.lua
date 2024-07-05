local L0_0, L1_1
L0_0 = {}
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.np2
L0_0.source_port = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p1
L0_0.destination_address = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.np2
L0_0.destination_port = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.np1
L0_0.protocol_p1 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[4]
L1_1 = L1_1.np2
L0_0.protocol_p2 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.np1
L0_0.client_version_p1 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.np2
L0_0.client_version_p2 = L1_1
L1_1 = string
L1_1 = L1_1.match
L1_1 = L1_1(this_sigattrlog[6].utf8p1, "Cookie: mstshash=(.*)")
L0_0.cookie = L1_1
L1_1 = string
L1_1 = L1_1.match
L1_1 = L1_1(this_sigattrlog[6].utf8p1, "Cookie: msts=(.*)")
L0_0.routing_token = L1_1
L1_1 = L0_0.cookie
if not L1_1 then
  L1_1 = L0_0.routing_token
  if not L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.utf8p1
    L0_0.undefined_cookie = L1_1
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[6]
L1_1 = L1_1.np2
L0_0.client_security_p2 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.np1
L0_0.server_negotiation_p1 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[7]
L1_1 = L1_1.np2
L0_0.server_negotiation_p2 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[8]
L1_1 = L1_1.np1
L0_0.client_encryption_p1 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[8]
L1_1 = L1_1.np2
L0_0.client_encryption_p2 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[9]
L1_1 = L1_1.np1
L0_0.client_cluster_flags_p1 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[9]
L1_1 = L1_1.np2
L0_0.client_cluster_flags_p2 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[3]
L1_1 = L1_1.utf8p1
AppendToRollingQueue("RDPIncomingConnection", L1_1, safeJsonSerialize(L0_0), 3600, 100)
return mp.INFECTED
