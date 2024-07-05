local L0_0
if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil or bm.get_current_process_startup_info().command_line == nil then
  return mp.CLEAN
end
if isParentPackageManager(bm.get_current_process_startup_info().ppid, true) then
  return mp.CLEAN
end
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
  mp.ReportLowfi(L0_0, 1690978323)
end
TrackPidAndTechniqueBM("BM", "T1574", "DefenseEvasion_HijackExecutionFlow_WWDSuspiciousModuleDrop")
return mp.INFECTED
