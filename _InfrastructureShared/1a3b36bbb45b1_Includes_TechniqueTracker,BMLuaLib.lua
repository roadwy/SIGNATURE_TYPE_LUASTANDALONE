local L0_0
if this_sigattrlog[7].matched then
  L0_0 = this_sigattrlog[7].utf8p1
elseif this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].utf8p1
elseif this_sigattrlog[9].matched then
  L0_0 = this_sigattrlog[9].utf8p1
elseif this_sigattrlog[10].matched then
  L0_0 = this_sigattrlog[10].utf8p1
else
  return mp.CLEAN
end
if L0_0 ~= nil then
  bm.add_related_file(L0_0)
  mp.ReportLowfi(L0_0, 4257421737)
end
TrackPidAndTechniqueBM("BM", "T1574", "DefenseEvasion_HijackExecutionFlow_HiddenSuspiciousModuleDrop")
return mp.INFECTED
