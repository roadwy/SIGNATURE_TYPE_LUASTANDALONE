if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path) == nil then
    return mp.CLEAN
  end
  if ({
    ["ossec-agent.exe"] = true,
    ["qualysagent.exe"] = true,
    ["msexchangehmworker.exe"] = true,
    ["w32main2.exe"] = true,
    ["wagsrvc.exe"] = true,
    ["humvpnlogon.exe"] = true,
    ["imogenassistant.exe"] = true,
    ["imogenservice.exe"] = true,
    ["pedclient.wshost.exe"] = true,
    ["cscan.exe"] = true,
    ["ciscod.exe"] = true,
    ["ltsvc.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1018", "remote_system_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.CLEAN
