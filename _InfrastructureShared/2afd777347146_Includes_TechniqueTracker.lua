TrackPidAndTechnique("CMDHSTR", "T1497", "virtualization_evasion")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI
