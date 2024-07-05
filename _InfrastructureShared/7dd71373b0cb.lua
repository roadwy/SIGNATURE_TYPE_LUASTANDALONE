local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0.ppid)
if L1_1 ~= nil then
  L1_1 = string.lower(L1_1)
  if L1_1:find("winsas64.bat", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
