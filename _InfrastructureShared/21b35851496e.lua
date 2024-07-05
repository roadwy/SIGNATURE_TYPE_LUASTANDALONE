local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L1_1 = L0_0.matched
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.utf8p2
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.utf8p1
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L0_0.ppid
if not L3_3 then
  return mp.CLEAN
end
if MpCommon.IsFriendlyProcess(L3_3) then
  return mp.CLEAN
end
bm.add_related_string("vm_sz", L2_2, bm.RelatedStringBMReport)
return mp.INFECTED
