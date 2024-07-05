if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1572", "CommandAndControl")
end
return mp.LOWFI
