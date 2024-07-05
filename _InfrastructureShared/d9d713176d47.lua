local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetParentProcInfo
  L2_2 = L0_0.ppid
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L1_1.image_path
    L2_2 = L2_2(L3_3)
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(mp.GetProcessCommandLine(L1_1.ppid))
    if L2_2 and L3_3 and string.find(L2_2, "\\system32\\dllhost.exe", 1, true) and string.find(L3_3, "{3e5fc7f9-9a51-4367-9063-a120244fbec7}", 1, true) then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
