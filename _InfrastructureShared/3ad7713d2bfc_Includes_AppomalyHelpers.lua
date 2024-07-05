local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L2_2 = L2_2(L3_3, "([^\\]+)$")
  if L2_2 == "sqlservr.exe" then
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
    L3_3 = L3_3.lower
    L3_3 = L3_3(L3_3)
    if hasBase64Content(L3_3) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
