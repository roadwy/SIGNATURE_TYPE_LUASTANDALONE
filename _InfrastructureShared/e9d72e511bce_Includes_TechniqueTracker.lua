local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("CMDHSTR")
TrackPidAndTechnique(L0_0, "T1562.001", "mptamper_mse7")
if IsDetectionThresholdMet(L0_0) then
  return mp.INFECTED
end
return mp.LOWFI
