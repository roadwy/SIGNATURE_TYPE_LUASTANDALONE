TrackPidAndTechnique("CMDHSTR", "T1218.005", "mshta-parent")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
if mp.GetParentProcInfo() ~= nil then
  if ({
    ["svchost.exe"] = true,
    ["taskhostw.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
