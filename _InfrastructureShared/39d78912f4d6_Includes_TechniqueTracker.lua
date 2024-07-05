if mp.GetParentProcInfo() ~= nil then
  if ({
    ["dcpatchscan.exe"] = true,
    ["dcconfig.exe"] = true,
    ["openit_apicontroller.exe"] = true,
    ["taniumclient.exe"] = true,
    ["dcreplication.exe"] = true,
    ["niniteagent.exe"] = true,
    ["qqgame.exe"] = true,
    ["xeclient.exe"] = true,
    ["xeservice.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
  if string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$"):find("office365_installer", 1, true) or string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$"):find("ninite", 1, true) then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1560", "archive_collected_data")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI
