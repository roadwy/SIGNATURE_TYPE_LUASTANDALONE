local L0_0, L1_1
L1_1 = {
  "program files",
  "windows"
}
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
end
if contains(L0_0, L1_1) then
  return mp.CLEAN
end
if IsLegacyOrgMachine() or IsTechniqueObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion_cln") then
  return mp.CLEAN
end
if bm.GetOverallTrafficVolumes().incoming_req < 1500000 and 1500000 > bm.GetOverallTrafficVolumes().outgoing_req and 1500000 > bm.GetOverallTrafficVolumes().incoming_response and 1500000 > bm.GetOverallTrafficVolumes().outgoing_response then
  return mp.CLEAN
end
if math_abs(bm.GetOverallTrafficVolumes().incoming_req - bm.GetOverallTrafficVolumes().outgoing_req) >= 0 and math_abs(bm.GetOverallTrafficVolumes().incoming_req - bm.GetOverallTrafficVolumes().outgoing_req) <= 100000 or math_abs(bm.GetOverallTrafficVolumes().incoming_response - bm.GetOverallTrafficVolumes().outgoing_response) >= 0 and math_abs(bm.GetOverallTrafficVolumes().incoming_response - bm.GetOverallTrafficVolumes().outgoing_response) <= 100000 then
  add_parents()
  reportRelatedBmHits()
  addOverallNetworkVolume()
  TrackPidAndTechniqueBM("BM", "T1090", "MultiProxy")
  return mp.INFECTED
end
return mp.CLEAN
