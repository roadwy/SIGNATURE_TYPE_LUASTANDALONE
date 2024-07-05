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
  L2_2 = L1_1.find
  L2_2 = L2_2(L3_3, "collectguestlogs.exe")
  if not L2_2 then
    L2_2 = L0_0.ppid
    if L2_2 == "" or L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(mp.GetProcessCommandLine(L2_2))
    if not string.find(L3_3, "TSS.ps1\"", 1, true) and not string.find(L3_3, "TSSv2.ps1\"", 1, true) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
