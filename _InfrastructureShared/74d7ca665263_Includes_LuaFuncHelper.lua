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
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if StringEndsWith(L1_1, "syswow64\\explorer.exe") then
  return mp.INFECTED
end
return mp.CLEAN
