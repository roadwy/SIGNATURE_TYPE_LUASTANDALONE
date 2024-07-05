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
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "maximomobile\\removecreds.ps1", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, ":\\windows\\ccm\\systemtemp", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
L3_3 = ""
if L2_2 ~= nil then
  L3_3 = string.lower(L2_2.image_path)
end
if L3_3:find(":\\windows\\ccm\\systemtemp", 1, true) then
  return mp.CLEAN
end
return mp.LOWFI
