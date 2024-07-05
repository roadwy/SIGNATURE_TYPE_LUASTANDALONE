local L0_0, L1_1
L0_0 = IsLegacyOrgMachine
L0_0 = L0_0()
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = IsTechniqueObservedForPid
  L1_1 = L1_1(L0_0, "ttexclusion")
elseif L1_1 then
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
if IsCommandLineTracked(L1_1, "PersistenceRegistryPowershellBlock") == true then
  return mp.INFECTED
end
return mp.CLEAN
