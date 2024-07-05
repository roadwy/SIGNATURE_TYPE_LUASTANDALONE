if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1003.001", "credentialdumping", 86400)
  return mp.INFECTED
end
return mp.CLEAN
