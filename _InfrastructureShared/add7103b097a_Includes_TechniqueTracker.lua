if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path) == nil then
    return mp.CLEAN
  end
  if ({
    ["springtoolsuite4.exe"] = true,
    ["microsoft.servicehub.controller.exe"] = true,
    ["devenv.exe"] = true,
    ["amazon-ssm-agent.exe"] = true,
    ["te-updater.exe"] = true,
    ["te-proxy.exe"] = true,
    ["te-iehelper.exe"] = true,
    ["gotoassistui.exe"] = true,
    ["gotoassistservice.exe"] = true,
    ["idea64.exe"] = true,
    ["te-user-agent.exe"] = true,
    ["monitoringhost.exe"] = true,
    ["qq.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1033", "session_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.CLEAN
