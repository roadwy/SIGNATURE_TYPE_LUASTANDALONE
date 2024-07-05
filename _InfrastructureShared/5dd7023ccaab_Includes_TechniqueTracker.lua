if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1053.005", "wmic_jobcreate")
if IsDetectionThresholdMet(mp.GetParentProcInfo().ppid) then
  return mp.INFECTED
end
return mp.LOWFI
