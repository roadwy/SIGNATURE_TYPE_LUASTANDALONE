if bm.get_current_process_startup_info() ~= nil then
  if bm.get_current_process_startup_info().command_line == nil or bm.get_current_process_startup_info().command_line == "" then
    return mp.CLEAN
  end
  if #bm.get_current_process_startup_info().command_line >= 7000 then
    bm.trigger_sig("SuspiciousCommandline.A", "Detected")
    TrackPidAndTechniqueBM("BM", "T1059", "SuspiciousCommandline")
    return mp.INFECTED
  end
end
return mp.CLEAN
