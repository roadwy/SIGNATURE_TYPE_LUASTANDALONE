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
if IsDetectionThresholdMet("CMDHSTR") or mp.IsHipsRuleEnabled("c1db55ab-c21a-4637-bb3f-a12568109d35") then
  return mp.INFECTED
end
return mp.CLEAN
