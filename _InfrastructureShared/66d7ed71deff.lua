local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0)
if L1_1 == nil or string.find(L1_1, "stop", 1, true) == nil and string.find(L1_1, "disabled", 1, true) == nil then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "su64.exe" or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") == "su32.exe" then
  return mp.INFECTED
end
return mp.CLEAN
