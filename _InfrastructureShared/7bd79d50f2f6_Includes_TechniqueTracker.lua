if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil then
  if ({
    ["appvlp.exe"] = true,
    ["control.exe"] = true,
    ["explorer.exe"] = true,
    ["sihost.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1218.011", "lolbin_rundll")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.CLEAN
