if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path):find("microsoft.ad.platform.commandagent", 1, true) then
    return mp.CLEAN
  end
  if string.lower(mp.GetParentProcInfo().image_path):find("wsmprovhost.exe", 1, true) then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1129", "mklink")
return mp.LOWFI
