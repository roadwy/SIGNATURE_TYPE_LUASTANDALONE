local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
if L0_0 then
  L1_1 = L0_0.utf8p2
  L1_1 = L1_1 and L0_0.utf8p1
elseif not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.match
L2_2 = L0_0.utf8p2
L3_3 = ";vmregionsize:(%d+)"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tonumber
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 > 200000 or L2_2 < 100000 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L0_0.utf8p2
L5_5 = ";vmbaseaddress:(%d+)"
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L0_0.utf8p1
L6_6 = "targetprocessppid:(%d+):(%d+)"
L5_5 = L4_4(L5_5, L6_6)
if not L4_4 or not L5_5 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.format
L6_6 = L6_6("pid:%s,ProcessStart:%s,address:%s,size:0", L4_4, L5_5, L3_3)
mp.TriggerScanResource("ems", L6_6)
return mp.INFECTED
