local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p1
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L3_3 = 12
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p2
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.utf8p1
L3_3 = string
L3_3 = L3_3.sub
L3_3 = L3_3(L2_2, 10)
L2_2 = L3_3
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.utf8p2
bm.add_threat_file(L0_0)
bm.add_threat_file(L1_1)
bm.add_threat_file(L2_2)
bm.add_threat_file(L3_3)
add_parents()
return mp.INFECTED
