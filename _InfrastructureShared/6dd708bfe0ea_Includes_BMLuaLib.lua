local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0)
L1_1 = L1_1.lower
L1_1 = L1_1(L1_1)
if not isIEXfound(L1_1) then
  return mp.CLEAN
end
if not string.find(L1_1, "%.downloadstring%(%'?\"?https?%://%d+%.%d+%.%d+%.%d+%:%d+/%w+") then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(string.sub(mp.GetParentProcInfo().image_path, -7)) == "cmd.exe" then
  return mp.INFECTED
end
return mp.CLEAN
