local L0_0
L0_0 = IsLegacyOrgMachine
L0_0 = L0_0()
if not L0_0 then
  L0_0 = IsTechniqueObservedForPid
  L0_0 = L0_0("BM", "ttexclusion")
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[3].utf8p2
elseif this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[4].utf8p2
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p2
end
if L0_0 == nil then
  return mp.CLEAN
end
if string.find(string.lower(L0_0), "downloadstring(", 1, true) ~= nil then
  TrackCommandLineAndTechnique(L0_0, "T1547.001", 0, "PersistenceRegistryPowershellBlock")
  AddResearchData("BM", true)
  return mp.INFECTED
end
return mp.CLEAN
