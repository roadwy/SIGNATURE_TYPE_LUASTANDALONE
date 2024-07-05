local L0_0, L1_1
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
L1_1 = L1_1(L0_0)
if (string.sub(L1_1, -1) == "\\" or string.find(L1_1, " \\ ", 1, true)) and (string.find(L1_1, "-s", 1, true) or string.find(L1_1, "-i", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
