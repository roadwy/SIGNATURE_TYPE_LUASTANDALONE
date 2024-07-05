TrackPidAndTechnique("CMDHSTR", "T1049", "network_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI
