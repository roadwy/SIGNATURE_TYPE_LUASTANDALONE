if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().ppid ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1491.001", "Impact_Defacement_InternalDefacement_Wallpaper")
end
return mp.INFECTED
