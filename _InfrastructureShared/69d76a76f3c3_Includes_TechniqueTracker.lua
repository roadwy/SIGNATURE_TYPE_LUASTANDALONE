local L0_0, L1_1
if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
  L0_0 = pcall(mp.GetParentProcInfo).ppid
  L1_1 = pcall(mp.GetParentProcInfo).image_path
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
if L0_0 ~= nil and L1_1 ~= nil then
  if L1_1:find("fsprocsvc", 1, true) then
    return mp.CLEAN
  end
  if IsPidExcluded(L0_0) then
    return mp.CLEAN
  end
  if IsTechniqueObservedForPid(L0_0, "T1036") then
    TrackPidAndTechnique(L0_0, "T1036", "child_of_masq")
    return mp.INFECTED
  end
end
return mp.CLEAN
