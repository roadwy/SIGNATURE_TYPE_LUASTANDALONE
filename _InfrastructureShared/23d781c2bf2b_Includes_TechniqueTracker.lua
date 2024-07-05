local L0_0, L1_1
if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
  L0_0 = pcall(mp.GetParentProcInfo).ppid
  L1_1 = pcall(mp.GetParentProcInfo).image_path
end
if L0_0 ~= nil and L1_1 ~= nil then
  if ({
    ["winlogon.exe"] = true,
    ["explorer.exe"] = true,
    ["sihost.exe"] = true
  })[L1_1:match("([^\\]+)$")] then
    return mp.CLEAN
  end
  if IsPidExcluded(L0_0) then
    return mp.CLEAN
  end
  if IsTacticObservedForPid(L0_0, "webshell_parent") or IsTacticObservedForPid(L0_0, "webshell_childproc") then
    return mp.INFECTED
  end
  TrackPidAndTechnique(L0_0, "T1218.011", "lolbin_rundll")
end
return mp.LOWFI
