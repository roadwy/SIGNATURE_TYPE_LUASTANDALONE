local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = "enghipscpy:blockexecution:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p1
  if L1_1 == nil or L2_2 == nil then
    return mp.CLEAN
  end
  if string.find(L1_1, "%", 1, true) ~= nil or string.find(L2_2, "%", 1, true) ~= nil then
    return mp.CLEAN
  end
  if not MpCommon.QueryPersistContext(L1_1, L0_0) then
    return mp.CLEAN
  else
    MpCommon.AppendPersistContext(L2_2, L0_0, 0)
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
