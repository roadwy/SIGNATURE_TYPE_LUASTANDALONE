if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  bm.trigger_sig("UPXFileExec", this_sigattrlog[2].utf8p1)
  TrackPidAndTechniqueBM("BM", "T1027.002", "DefenseEvasion_SoftwarePacking_mt2023")
  return mp.INFECTED
end
return mp.CLEAN
