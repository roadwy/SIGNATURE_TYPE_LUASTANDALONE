local L0_0
if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
  L0_0 = pcall(mp.GetParentProcInfo).ppid
end
if L0_0 ~= nil and pcall(mp.GetParentProcInfo).image_path ~= nil then
  TrackPidAndTechnique(L0_0, "T1087", "user_discovery")
  if IsDetectionThresholdMet(L0_0) then
    return mp.INFECTED
  end
end
return mp.LOWFI
