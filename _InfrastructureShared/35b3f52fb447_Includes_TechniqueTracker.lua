TrackPidAndTechniqueBM("BM", "T1056.001", "keylog")
if IsDetectionThresholdMet("BM") then
  return mp.INFECTED
end
return mp.CLEAN
