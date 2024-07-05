local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L2_2
L4_4 = L3_3(L4_4, "(\\windows\\system32\\)([%w%p%c]+)")
if L3_3 == nil or L4_4 == nil then
  return mp.CLEAN
end
if string.find(L4_4, "~1:", 1, true) == nil then
  return mp.CLEAN
end
if string.find(L4_4, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, ".", 1, true) ~= nil then
  return mp.CLEAN
end
if string.gsub(L3_3, "\\", "") ~= 3 then
  return mp.CLEAN
end
return mp.INFECTED
