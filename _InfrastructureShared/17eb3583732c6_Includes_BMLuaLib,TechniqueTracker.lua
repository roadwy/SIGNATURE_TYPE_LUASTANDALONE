local L0_0
if this_sigattrlog[5].matched and this_sigattrlog[5].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[5].utf8p1
end
if bm.get_current_process_startup_info() == nil or bm.get_current_process_startup_info().ppid == nil or bm.get_current_process_startup_info().ppid == "" or L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1560.001", "Collection_ArchiveViaUtility_TAR")
bm.trigger_sig("FileArchiving", L0_0)
addRelatedProcess()
reportRelatedBmHits()
return mp.INFECTED
