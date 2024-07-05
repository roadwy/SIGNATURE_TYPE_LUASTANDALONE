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
if not L1_1 then
  return mp.CLEAN
end
AppendToRollingQueue("disallowAv", L1_1, L0_0, 3600)
if not GetRollingQueueCount("disallowAv") then
  return mp.CLEAN
end
if GetRollingQueueCount("disallowAv") >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
