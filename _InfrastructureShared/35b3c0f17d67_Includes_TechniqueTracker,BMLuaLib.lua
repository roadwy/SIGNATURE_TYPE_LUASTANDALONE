if (mp.IsHipsRuleEnabled("5beb7efe-fd9a-4556-801d-275e5ffc04cc") or mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35")) and bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
  TrackPidAndTechniqueBM("BM", "T1561.002", "folderguard_blk_hips")
  return mp.INFECTED
end
return mp.CLEAN
