if mp.GetParentProcInfo() ~= nil then
  if ({
    ["log-agent.exe"] = true,
    ["unitypackagemanager.exe"] = true,
    ["tmacserverservice.exe"] = true,
    ["ossec-agent.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1082", "system_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.CLEAN
