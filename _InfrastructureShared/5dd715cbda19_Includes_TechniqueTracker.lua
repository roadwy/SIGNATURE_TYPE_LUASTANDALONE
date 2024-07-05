local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = IsPidExcluded
  L1_1 = L1_1(L0_0.ppid)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if ({
    ["ossec-agent.exe"] = true,
    ["911 location manager.exe"] = true,
    ["pdqinventoryscanner.exe"] = true,
    ["exechostserver64.exe"] = true
  })[L1_1:match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0.ppid)
if L1_1 ~= nil then
  L1_1 = string.lower(L1_1)
  if L1_1:find("uninstallservice.cmd") then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1018", "remote_system_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.INFECTED
end
if GetTacticsTableForPid(L0_0.ppid).winrshost_childproc or GetTacticsTableForPid(L0_0.ppid).wsmprovhost_childproc or GetTacticsTableForPid(L0_0.ppid).wmi_childproc or GetTacticsTableForPid(L0_0.ppid).remotedropexe_childproc or GetTacticsTableForPid(L0_0.ppid).python_childproc or GetTacticsTableForPid(L0_0.ppid).rundll32_childproc or GetTacticsTableForPid(L0_0.ppid).wscript_childproc or GetTacticsTableForPid(L0_0.ppid).cscript_childproc or GetTacticsTableForPid(L0_0.ppid).mshta_childproc or GetTacticsTableForPid(L0_0.ppid).webshell_childproc or GetTacticsTableForPid(L0_0.ppid).exec_remotedroppedscript_a then
  return mp.INFECTED
end
return mp.LOWFI
