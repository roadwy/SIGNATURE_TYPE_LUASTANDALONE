local L0_0, L1_1
if this_sigattrlog[2].matched then
  L0_0 = this_sigattrlog[2].utf8p1
  L1_1 = this_sigattrlog[2].ppid
else
  return mp.CLEAN
end
if isParentPackageManager(L1_1) then
  return mp.CLEAN
end
if L0_0 then
  bm.add_related_file(L0_0)
end
if L1_1 ~= nil then
  TrackPidAndTechniqueBM(L1_1, "T1053.003", "Persistence")
end
reportRelatedBmHits()
addRelatedProcess()
return mp.INFECTED
