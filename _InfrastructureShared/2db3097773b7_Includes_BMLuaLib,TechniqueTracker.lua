local L0_0
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
end
if L0_0 and string.match(L0_0, "/%.[^/]+$") then
  TrackPidAndTechniqueBM("BM", "T1070.001", "DefenseEvasion_IndicatorRemoval_FileDeletion_mt2023")
  reportRelatedBmHits()
  return mp.INFECTED
end
return mp.CLEAN
