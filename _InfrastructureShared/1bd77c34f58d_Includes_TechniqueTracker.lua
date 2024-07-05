if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path) == nil then
    return mp.CLEAN
  end
  if ({
    ["monitoringhost.exe"] = true,
    ["query.exe"] = true,
    ["taniumfileinfo.exe"] = true,
    ["taniumclient.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1033", "session_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI
