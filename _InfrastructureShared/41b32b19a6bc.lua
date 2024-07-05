local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "3b576869-a4ec-4529-8536-b80a7769e899"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0, L1_1 = nil, nil
if this_sigattrlog[1].matched then
  if this_sigattrlog[1].wp2 == nil or this_sigattrlog[1].wp2 == "" then
    return mp.CLEAN
  end
  L0_0 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[1].utf8p2)
  if L0_0 == nil or L0_0 == "" then
    return mp.CLEAN
  end
  if not MpCommon.QueryPersistContext(L0_0, "DroppedByOfficeProc") then
    return mp.CLEAN
  end
  if this_sigattrlog[1].wp1 == nil or this_sigattrlog[1].wp1 == "" then
    return mp.CLEAN
  end
  L1_1 = mp.ContextualExpandEnvironmentVariables(this_sigattrlog[1].utf8p1)
  if L1_1 == nil or L1_1 == "" then
    return mp.CLEAN
  end
  if not MpCommon.QueryPersistContext(L1_1, "DroppedByOfficeProc") then
    MpCommon.AppendPersistContext(L1_1, "DroppedByOfficeProc", 0)
    return mp.INFECTED
  end
end
return mp.CLEAN
