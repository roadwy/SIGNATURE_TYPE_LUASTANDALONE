local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L0_0 == "" or L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
if L1_1 == "" or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.GetProcessCommandLine
L4_4 = L1_1
L3_3 = L3_3(L4_4)
L4_4 = {
  "sophosstopservices.bat",
  "\\syncro\\",
  "sophosremoval.ps1",
  "\\programdata\\amagent\\",
  "microsoft intune management extension",
  "smstspowershellscripts"
}
if contains(L2_2, L4_4) then
  return mp.CLEAN
end
if contains(L3_3, L4_4) then
  return mp.CLEAN
end
return mp.INFECTED
