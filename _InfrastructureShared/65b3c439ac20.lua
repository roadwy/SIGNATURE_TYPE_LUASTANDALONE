if bm.get_current_process_startup_info().integrity_level < 16384 then
  return mp.INFECTED
end
return mp.CLEAN
