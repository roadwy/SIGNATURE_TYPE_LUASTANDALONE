local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = 16
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L2_2 = L1_1.matched
if L2_2 then
  L2_2 = L1_1.utf8p2
elseif not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L3_3 = L2_2.matched
if L3_3 then
  L3_3 = L2_2.ppid
elseif not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = GetSuspiciousRegions
L3_3 = L3_3()
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.format
L4_4 = L4_4("ScanBeaconing.A:%s", L2_2.ppid)
if not pcall(MpCommon.AtomicCounterValue, L4_4) then
  return mp.CLEAN
end
if not pcall(MpCommon.AtomicCounterValue, L4_4) then
  if not pcall(MpCommon.AtomicCounterSet, L4_4, 0, 3600) then
    return mp.CLEAN
  end
end
if 0 == L0_0 then
  return mp.CLEAN
end
for _FORV_10_, _FORV_11_ in ipairs(L3_3) do
  TriggerTargetedMemoryScan(_FORV_11_ + 0)
end
if not pcall(MpCommon.AtomicCounterAdd, L4_4, 1) then
  return mp.CLEAN
end
bm.trigger_sig("ScanSuspiciousRegions", L1_1.utf8p2, L2_2.ppid)
return mp.CLEAN
