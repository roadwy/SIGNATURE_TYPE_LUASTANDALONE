if mp.GetParentProcInfo() ~= nil then
  if ({
    ["supportassistagent.exe"] = true,
    ["printixservice.exe"] = true,
    ["vpnagent.exe"] = true,
    ["ossec-agent.exe"] = true,
    ["pangps.exe"] = true,
    ["cthwiprvservice.exe"] = true,
    ["ctesdursvc.exe"] = true,
    ["node.exe"] = true,
    ["heimdal.darklayerguard.exe"] = true,
    ["fortisslvpndaemon.exe"] = true,
    ["ccmexec.exe"] = true,
    ["gpscript.exe"] = true,
    ["mpcmdrun.exe"] = true,
    ["mssense.exe"] = true,
    ["senseir.exe"] = true,
    ["solsticeclient.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
  if string.lower(mp.GetParentProcInfo().image_path):find("\\daragent\\", 1, true) then
    return mp.CLEAN
  end
end
if IsTacticObservedForParents(mp.GetParentProcInfo().ppid, "ttexclusion", 3) then
  return mp.CLEAN
end
TrackPidAndTechnique("CMDHSTR", "T1016", "network_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.CLEAN
