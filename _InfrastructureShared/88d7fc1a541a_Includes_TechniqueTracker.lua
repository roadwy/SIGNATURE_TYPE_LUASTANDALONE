if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil and string.lower(mp.GetParentProcInfo().image_path):find("\\daragent\\", 1, true) then
  return mp.CLEAN
end
if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
TrackPidAndTechnique("CMDHSTR", "T1218.011", "lolbin_rundll")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI
