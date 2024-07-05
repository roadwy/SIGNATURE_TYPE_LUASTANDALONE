local L0_0
L0_0 = GetRealPidForScenario
L0_0 = L0_0("CMDHSTR")
if IsPidExcluded(L0_0) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil and mp.GetParentProcInfo().image_path ~= nil then
  if ({
    ["ccmexec.exe"] = true,
    ["gpscript.exe"] = true,
    ["mpcmdrun.exe"] = true,
    ["mssense.exe"] = true,
    ["senseir.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path:match("([^\\]+)$"))] then
    return mp.CLEAN
  end
end
TrackPidAndTechnique(L0_0, "T1003", "shadowcopy_create")
if IsDetectionThresholdMet(L0_0) then
  return mp.INFECTED
end
return mp.LOWFI
