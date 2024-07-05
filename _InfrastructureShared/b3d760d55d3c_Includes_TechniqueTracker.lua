if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if mp.GetParentProcInfo().image_path ~= nil then
  if ({
    ["officeclicktorun.exe"] = true,
    ["integrator.exe"] = true,
    ["zuum.exe"] = true,
    ["alertusdesktopservice.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1053.005", "schtask_cmd")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI
