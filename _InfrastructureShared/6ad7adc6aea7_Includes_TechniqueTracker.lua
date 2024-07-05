TrackPidAndTechnique("CMDHSTR", "T1096", "permission_groups_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI
