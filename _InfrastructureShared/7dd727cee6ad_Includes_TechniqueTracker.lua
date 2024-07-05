if mp.GetParentProcInfo() ~= nil then
  if string.lower(mp.GetParentProcInfo().image_path) == nil then
    return mp.CLEAN
  end
  if not ({
    ["excel.exe"] = true,
    ["msaccess.exe"] = true,
    ["onenote.exe"] = true,
    ["powerpnt.exe"] = true,
    ["winword.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1559.001", "interprocess_com")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
return mp.LOWFI
