local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = L1_1.match
  L2_2 = L2_2(L1_1, "([^\\]+)$")
  if L2_2 ~= "rundll32.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.GetProcessCommandLine(L0_0.ppid))
  if L2_2 == nil then
    return mp.CLEAN
  end
  if string.find(L2_2, ".dll", 1, true) then
    return mp.CLEAN
  end
  if string.find(L2_2, "#1", 1, true) or string.find(L2_2, "#2", 1, true) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
