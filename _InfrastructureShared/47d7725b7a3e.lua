local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L0_0
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L2_2 = L2_2(L3_3, "https?://(%d+)/")
if L2_2 ~= nil then
  L3_3 = nil
  if string.find(L2_2, "^[01]+$") ~= nil and #L2_2 > 24 then
    L3_3 = mp.shr32(tonumber(L2_2, 2), 24)
  else
    L3_3 = mp.shr32(tonumber(L2_2), 24)
  end
  if L3_3 == nil or L3_3 == 127 or L3_3 == 10 then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
