local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.GetProcessCommandLine(L0_0))
if not L1_1 then
  return mp.CLEAN
end
if string.find(L1_1, "dacpac.candence.ps1") then
  return mp.CLEAN
end
return mp.INFECTED
