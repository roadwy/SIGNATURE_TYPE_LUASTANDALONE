if this_sigattrlog[4].matched and this_sigattrlog[4].wp2 == nil then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1018", "Discovery")
return mp.INFECTED
