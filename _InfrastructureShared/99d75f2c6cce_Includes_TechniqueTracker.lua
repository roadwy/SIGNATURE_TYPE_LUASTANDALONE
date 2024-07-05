if mp.GetParentProcInfo() ~= nil then
  if ({
    ["ossec-agent.exe"] = true,
    ["911 location manager.exe"] = true,
    ["ltsvc.exe"] = true,
    ["cscan.exe"] = true,
    ["ciscod.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1018", "remote_system_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI
