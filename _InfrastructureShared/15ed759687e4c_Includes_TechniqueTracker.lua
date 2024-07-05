local L0_0, L1_1
if pcall(mp.GetParentProcInfo) and pcall(mp.GetParentProcInfo) ~= nil then
  L0_0 = pcall(mp.GetParentProcInfo).ppid
  L1_1 = pcall(mp.GetParentProcInfo).image_path
  if ({
    ["net.exe"] = true,
    ["ng bailey image collector.exe"] = true,
    ["ltsvc.exe"] = true,
    ["explorer.exe"] = true
  })[string.lower(L1_1):match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
if L0_0 ~= nil and L1_1 ~= nil then
  if IsLegacyOrgMachine() then
    return mp.CLEAN
  end
  if IsPidExcluded(L0_0) then
    return mp.CLEAN
  end
  TrackPidAndTechnique(L0_0, "T1087", "account_discovery")
  if IsDetectionThresholdMet(L0_0) then
    return mp.INFECTED
  end
  if IsTechniqueObservedForPid(L0_0, "T1071") then
    return mp.INFECTED
  end
  if GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).winrshost_childproc or GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).wsmprovhost_childproc or GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).wmi_childproc or GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).remotedropexe_childproc or GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).python_childproc or GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).mshta_childproc or GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).webshell_childproc or GetTacticsTableForPid(pcall(mp.GetParentProcInfo).ppid).exec_remotedroppedscript_a then
    return mp.INFECTED
  end
end
return mp.CLEAN
