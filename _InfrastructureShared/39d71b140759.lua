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
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L2_2 = L2_2(L3_3, 1, 7)
if L2_2 == "msiexec" then
  L2_2 = mp
  L2_2 = L2_2.GetParentProcInfo
  L2_2 = L2_2()
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L2_2.image_path)
    if ({
      ["svchost.exe"] = true,
      ["taskeng.exe"] = true,
      ["taskhostw.exe"] = true
    })[string.sub(L3_3, -15):match("\\([^\\]+)$")] then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
