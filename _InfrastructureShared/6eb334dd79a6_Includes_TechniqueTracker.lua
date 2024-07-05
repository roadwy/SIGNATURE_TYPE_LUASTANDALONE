if IsDetectionThresholdMet("BM") then
  TrackPidAndTechniqueBM("BM", "T1562.004", "disablefirewall")
  return mp.INFECTED
end
return mp.CLEAN
