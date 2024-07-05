if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil and mp.GetParentProcInfo().image_path ~= "" and string.find(mp.GetParentProcInfo().image_path, "services.exe", 1, true) then
  TrackPidAndTechniqueBM(mp.GetParentProcInfo().ppid, "T1003.001", "credentialdumping", 86400)
  return mp.INFECTED
end
return mp.CLEAN
