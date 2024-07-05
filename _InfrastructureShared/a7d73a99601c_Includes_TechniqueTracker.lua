local L0_0, L1_1
if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
  L0_0 = pcall(mp.GetParentProcInfo).ppid
  L1_1 = string.lower(pcall(mp.GetParentProcInfo).image_path)
  if L0_0 ~= nil then
    if IsPidExcluded(L0_0) then
      return mp.CLEAN
    end
    if L1_1:find("ltsvc.exe") then
      return mp.CLEAN
    end
    if ({
      ["ccmexec.exe"] = true,
      ["gpscript.exe"] = true,
      ["mpcmdrun.exe"] = true,
      ["mssense.exe"] = true,
      ["senseir.exe"] = true
    })[string.lower(L1_1:match("([^\\]+)$"))] then
      return mp.CLEAN
    end
    TrackPidAndTechnique(L0_0, "T1071.001", "lolbin_web_github")
    if IsDetectionThresholdMet(L0_0) then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
end
return mp.CLEAN
