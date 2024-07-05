if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1003.001", "credentialdumping_concrete", 86400)
else
  TrackPidAndTechniqueBM("BM", "T1003.001", "credentialdumping_concrete", 86400)
end
return mp.INFECTED
