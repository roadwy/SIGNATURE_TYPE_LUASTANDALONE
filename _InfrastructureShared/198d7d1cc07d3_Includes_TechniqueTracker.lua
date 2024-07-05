if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.001", "mptamper_av")
end
return mp.INFECTED
