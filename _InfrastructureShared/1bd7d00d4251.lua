local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == "" or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L1_1)
L3_3 = L2_2(L3_3, "makecab.*%s+[\"]?([^%s\"]+)[\"]?%s+[\"]?([^%s\"]+)[\"]?")
if L2_2 == "" or L2_2 == nil then
  return mp.CLEAN
end
if L3_3 == "" or L3_3 == nil then
  return mp.CLEAN
end
if string.find(L2_2, "^%a:\\") == nil then
  return mp.INFECTED
end
if string.find(L3_3, "\\[^\\:]+:[^\\:]+$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
