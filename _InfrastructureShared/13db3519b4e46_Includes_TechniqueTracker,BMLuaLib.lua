if mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35") and bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  if string.lower(bm.get_current_process_startup_info().command_line):match("\\ltsvc.exe") then
    return mp.CLEAN
  end
  if string.lower(bm.get_current_process_startup_info().command_line):match("\\veeamguesthelper.exe") then
    return mp.CLEAN
  end
  if string.lower(bm.get_current_process_startup_info().command_line):match("\\avast.+\\regsvr.exe") or string.lower(bm.get_current_process_startup_info().command_line):match("\\avg.+\\regsvr.exe") then
    return mp.CLEAN
  end
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
  TrackPidAndTechniqueBM("BM", "T1561.002", "folderguard_blk_rsm")
end
return mp.INFECTED
