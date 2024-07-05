local L0_0, L1_1
if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
  L0_0 = pcall(mp.GetParentProcInfo).ppid
  L1_1 = pcall(mp.GetParentProcInfo).image_path
  if ({
    ["net.exe"] = true,
    ["ng bailey image collector.exe"] = true,
    ["ltsvc.exe"] = true
  })[string.lower(L1_1):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
if L0_0 ~= nil and L1_1 ~= nil then
  TrackPidAndTechnique(L0_0, "T1087", "account_discovery")
  if IsDetectionThresholdMet(L0_0) then
    return mp.LOWFI
  end
end
return mp.CLEAN
