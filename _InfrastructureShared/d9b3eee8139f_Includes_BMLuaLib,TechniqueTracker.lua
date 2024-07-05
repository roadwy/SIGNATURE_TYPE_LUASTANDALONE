local L0_0, L1_1
if this_sigattrlog[3].matched and this_sigattrlog[3].wp2 ~= nil then
  L1_1 = this_sigattrlog[3].ppid
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
elseif this_sigattrlog[4].matched and this_sigattrlog[4].wp2 ~= nil then
  L1_1 = this_sigattrlog[4].ppid
  L0_0 = string.lower(this_sigattrlog[4].utf8p2)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].wp2 ~= nil then
  L1_1 = this_sigattrlog[5].ppid
  L0_0 = string.lower(this_sigattrlog[5].utf8p2)
elseif this_sigattrlog[6].matched and this_sigattrlog[6].wp2 ~= nil then
  L1_1 = this_sigattrlog[6].ppid
  L0_0 = string.lower(this_sigattrlog[6].utf8p2)
elseif this_sigattrlog[7].matched and this_sigattrlog[7].wp2 ~= nil then
  L1_1 = this_sigattrlog[7].ppid
  L0_0 = string.lower(this_sigattrlog[7].utf8p2)
end
if L0_0 == nil or L1_1 == nil then
  return mp.CLEAN
end
if this_sigattrlog[7].matched and not string.find(L0_0, "init 0", 1, true) and not string.find(L0_0, "init 6", 1, true) then
  return mp.CLEAN
end
if IsTechniqueObservedForPid(L1_1, "T1561.001") or IsTechniqueObservedForPid(L1_1, "T1561.002") then
  TrackPidAndTechniqueBM(L1_1, "T1529", "Impact_SystemReboot")
  addRelatedProcess()
  return mp.INFECTED
end
return mp.CLEAN
