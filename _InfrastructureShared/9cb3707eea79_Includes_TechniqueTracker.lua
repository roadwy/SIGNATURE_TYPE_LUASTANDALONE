if not bm.get_current_process_startup_info() then
  return mp.CLEAN
end
if bm.get_current_process_startup_info().ppid then
  if IsPidExcluded(bm.get_current_process_startup_info().ppid) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM(bm.get_current_process_startup_info().ppid, "T1057", "xfer_from_attackerserver_c")
  return mp.INFECTED
end
return mp.CLEAN
