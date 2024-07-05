local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 ~= nil then
  if string.match(L0_0, "^%./%.[^/]+$") then
    TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
  elseif string.match(L0_0, "/%.[^/]+$") and isTainted(L0_0, "remote_file_created_taint") then
    TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN
