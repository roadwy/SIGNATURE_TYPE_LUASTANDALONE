if mp.GetParentProcInfo() ~= nil then
  if ({
    ["iaprintmanager.exe"] = true,
    ["sdiagnhost.exe"] = true,
    ["qq.exe"] = true,
    ["printixservice.exe"] = true,
    ["lnsscomm.exe"] = true,
    ["webexmta.exe"] = true,
    ["supportassistagent.exe"] = true,
    ["vpnagent.exe"] = true,
    ["ossec-agent.exe"] = true,
    ["pangps.exe"] = true,
    ["cthwiprvservice.exe"] = true,
    ["ctesdursvc.exe"] = true,
    ["node.exe"] = true,
    ["heimdal.darklayerguard.exe"] = true,
    ["fortisslvpndaemon.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1016", "network_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.CLEAN
