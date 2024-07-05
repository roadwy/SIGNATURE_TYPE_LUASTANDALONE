if mp.GetParentProcInfo() ~= nil then
  if ({
    ["ossec-agent.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1135", "network_share_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI
