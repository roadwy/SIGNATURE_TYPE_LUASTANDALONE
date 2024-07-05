if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1003.003", "NtdsFromDiskShadow", 60)
else
  TrackPidAndTechniqueBM("BM", "T1003.003", "NtdsFromDiskShadow", 60)
end
return mp.INFECTED
