local L0_0
L0_0 = {}
L0_0["node.exe"] = true
L0_0["masvc.exe"] = true
L0_0["ltsvc.exe"] = true
L0_0["java.exe"] = true
if mp.GetParentProcInfo() ~= nil and string.lower(mp.GetParentProcInfo().image_path) ~= nil and L0_0[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
  return mp.CLEAN
end
TrackPidAndTechnique("CMDHSTR", "T1057", "process_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.CLEAN
