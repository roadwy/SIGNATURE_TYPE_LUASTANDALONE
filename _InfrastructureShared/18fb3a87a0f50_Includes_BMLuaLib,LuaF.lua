local L0_0, L1_1, L2_2, L3_3, L4_4
L1_1 = {}
L2_2 = false
L3_3 = false
L4_4 = {
  "program files",
  "windows"
}
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
end
if contains(L0_0, L4_4) then
  return mp.CLEAN
end
if IsLegacyOrgMachine() or IsTechniqueObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion_cln") then
  return mp.CLEAN
end
if this_sigattrlog[8].matched then
  L1_1 = parseNetworkVolumeEvent(this_sigattrlog[8])
elseif this_sigattrlog[9].matched then
  L1_1 = parseNetworkVolumeEvent(this_sigattrlog[9])
  L2_2 = true
end
if L1_1 and #L1_1 < 0 then
  return mp.CLEAN
end
if tonumber(L1_1.Bout) < 100000 then
  return mp.CLEAN
end
if L2_2 then
  if bm.GetOverallTrafficVolumes()["incoming_response "] > 10000000 then
    L3_3 = true
  end
elseif 10000000 < bm.GetOverallTrafficVolumes().outgoing_req then
  L3_3 = true
end
if L3_3 then
  add_parents()
  reportRelatedBmHits()
  addOverallNetworkVolume()
  TrackPidAndTechniqueBM("BM", "T1567", "ExfilOverWeb")
  return mp.INFECTED
end
return mp.CLEAN
