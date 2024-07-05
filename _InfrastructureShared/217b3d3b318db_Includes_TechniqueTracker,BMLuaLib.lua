local L0_0, L1_1, L2_2
L1_1 = {L2_2, "windows"}
L2_2 = "program files"
L2_2 = {}
if this_sigattrlog[9].matched and this_sigattrlog[9].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[9].utf8p1
end
if contains(L0_0, L1_1) then
  return mp.CLEAN
end
if IsLegacyOrgMachine() or IsTechniqueObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion_cln") then
  return mp.CLEAN
end
if this_sigattrlog[11].matched then
  L2_2 = parseNetworkVolumeEvent(this_sigattrlog[11])
elseif this_sigattrlog[12].matched then
  L2_2 = parseNetworkVolumeEvent(this_sigattrlog[12])
end
if L2_2 and #L2_2 < 0 then
  return mp.CLEAN
end
if tonumber(L2_2.Bout) < 100000 then
  return mp.CLEAN
end
if true then
else
end
if true then
  add_parents()
  reportRelatedBmHits()
  addOverallNetworkVolume()
  TrackPidAndTechniqueBM("BM", "T1567", "ExfilOverWeb")
  return mp.INFECTED
end
return mp.CLEAN
