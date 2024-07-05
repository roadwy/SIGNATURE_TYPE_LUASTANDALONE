if IsDetectionThresholdMet("BM") then
  TrackPidAndTechniqueBM("BM", "T1059", "commandscriptthreshold")
  return mp.INFECTED
end
return mp.CLEAN
