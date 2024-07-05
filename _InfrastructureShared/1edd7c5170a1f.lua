local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.GetProcessCommandLine(L0_0))
if L1_1 == nil then
  return mp.CLEAN
end
if string.find(L1_1, "sdelete", 1, true) or string.find(L1_1, "procdump", 1, true) or string.find(L1_1, "psshutdown", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
