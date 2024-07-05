local L0_0, L1_1, L2_2
L0_0 = this_sigattrlog
L0_0 = L0_0[47]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[47]
  L0_0 = L0_0.utf8p2
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = this_sigattrlog
L1_1 = L1_1[47]
L1_1 = L1_1.ppid
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = GetRollingQueueKeyValues
L2_2 = L2_2("gpo_schtasks", L0_0)
if not L2_2 then
  return mp.CLEAN
end
for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
  bm.add_related_string("RemoteInvocation:GPO", _FORV_7_.value, bm.RelatedStringBMReport)
  MpCommon.BmTriggerSigPropagate(L1_1, "RemoteInvocation:GPO", _FORV_7_.value)
  MpCommon.AddProcessAttribute(L1_1, "RemoteInvocation:GPO", L0_0, true)
end
return mp.INFECTED
