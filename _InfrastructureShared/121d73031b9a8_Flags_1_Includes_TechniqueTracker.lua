if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.001", "DefenseEvasion")
end
return mp.LOWFI
