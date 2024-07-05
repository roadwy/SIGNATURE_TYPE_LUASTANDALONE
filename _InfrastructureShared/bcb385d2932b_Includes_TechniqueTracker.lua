if #bm.get_current_process_startup_info().command_line > 70 then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1562.001", "DefenseEvasion")
return mp.INFECTED
