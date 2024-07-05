if (mp.IsHipsRuleEnabled("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") or mp.IsHipsRuleEnabled("3b576869-a4ec-4529-8536-b80a7769e899") or mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35")) and bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
  TrackPidAndTechniqueBM("BM", "T1561.002", "folderguard_blk_hips")
  return mp.INFECTED
end
return mp.CLEAN
