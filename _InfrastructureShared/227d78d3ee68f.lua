local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.GetProcessCommandLine(L0_0.ppid))
  if L1_1 and L2_2 and string.find(L1_1, "\\system32\\dllhost.exe", 1, true) and string.find(L2_2, "{3e5fc7f9-9a51-4367-9063-a120244fbec7}", 1, true) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
