local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L0_0.image_path
L3_3 = L2_2(L3_3, -12)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, -12))
if L1_1 ~= "psexesvc.exe" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetScannedPPID
L2_2 = L2_2()
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetProcessCommandLine
L3_3 = L3_3(L2_2)
if not L3_3 or #L3_3 <= 10 then
  return mp.CLEAN
end
if contains(L3_3, "\\share$\\") or contains(L3_3, "\\admin$\\") or contains(L3_3, " \\\\") or contains(L3_3, " \"\"\\\\") then
  return mp.INFECTED
end
return mp.CLEAN
