local L0_0, L1_1
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p2
end
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil then
  L1_1 = this_sigattrlog[3].utf8p2
end
if L1_1 and L0_0 and string.match(L1_1, "/%.[^/]+$") and string.find(L0_0, L1_1, 1, true) then
  TrackPidAndTechniqueBM("BM", "T1564.001", "DefenseEvasion_HiddenArtifacts_mt2023")
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
