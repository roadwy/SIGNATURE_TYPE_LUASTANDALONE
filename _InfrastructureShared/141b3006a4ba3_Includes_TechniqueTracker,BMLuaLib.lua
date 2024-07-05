if is_excluded_parent_proc_auto() then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1547.001", "persistence_runkeys_b")
return mp.INFECTED
