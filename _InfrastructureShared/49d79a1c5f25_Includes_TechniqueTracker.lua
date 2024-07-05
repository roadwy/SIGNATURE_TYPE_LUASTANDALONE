if mp.GetParentProcInfo() ~= nil then
  if ({
    ["rterm.exe"] = true,
    ["rscript.exe"] = true,
    ["qualityagent.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1560", "archive_collected_data")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI
