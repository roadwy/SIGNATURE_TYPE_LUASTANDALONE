local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = this_sigattrlog
L0_0 = L0_0[9]
if L0_0 then
  L1_1 = L0_0.utf8p1
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[8]
if L1_1 then
  L2_2 = L1_1.utf8p2
elseif not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tonumber
L3_3 = L0_0.utf8p1
L2_2 = L2_2(L3_3)
if L2_2 < 9000 or L2_2 > 50000 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1.utf8p2
L3_3 = L3_3(L4_4, "(%d+);regionsize:")
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.format
L4_4 = L4_4("%s,address:%s,size:0", L0_0.ppid, L3_3)
mp.TriggerScanResource("ems", L4_4)
return mp.INFECTED
