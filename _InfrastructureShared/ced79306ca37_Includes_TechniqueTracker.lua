local L0_0
if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
  L0_0 = pcall(mp.GetParentProcInfo).ppid
end
if L0_0 ~= nil and pcall(mp.GetParentProcInfo).image_path ~= nil then
  TrackPidAndTechnique(L0_0, "T1087", "account_discovery")
  if IsDetectionThresholdMet(L0_0) then
    return mp.LOWFI
  end
end
return mp.CLEAN
