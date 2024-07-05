if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil then
  if ({
    ["pulsesecureservice.exe"] = true,
    ["mscorsvw.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1543.003", "lolbin_sc")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI
