if is_excluded_parent_proc_auto() then
  return mp.CLEAN
end
if bm.GetSignatureMatchDuration() > 36000000000 then
  return mp.CLEAN
end
if bm.get_current_process_startup_info() ~= nil and bm.get_current_process_startup_info().command_line ~= nil then
  bm_AddRelatedFileFromCommandLine(bm.get_current_process_startup_info().command_line, nil, nil, 1)
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1003", "tt-thresholdmet")
  return mp.INFECTED
end
return mp.CLEAN
