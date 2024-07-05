local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[2]
L0_0 = L0_0.utf8p2
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = ".sh"
L4_4 = 1
L1_1 = L1_1(L2_2, L3_3, L4_4, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = 3000000
L2_2 = bm
L2_2 = L2_2.GetSignatureMatchDuration
L2_2 = L2_2()
if L1_1 < L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.utf8p1
L3_3 = split
L4_4 = L2_2
L3_3 = L3_3(L4_4, "/")
L4_4 = #L3_3
L4_4 = L3_3[L4_4]
if string.find(L0_0, L4_4, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
