local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if ({
    ["ossec-agent.exe"] = true,
    ["911 location manager.exe"] = true,
    ["ltsvc.exe"] = true,
    ["synchronizerweb.exe"] = true,
    ["rocketleague.exe"] = true,
    ["wssad.exe"] = true
  })[L1_1:match("([^\\]+)$")] then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L0_0.ppid)
if L1_1 ~= nil then
  L1_1 = string.lower(L1_1)
  if L1_1:find("uninstallservice.cmd") or L1_1:find("ltrestart.bat") then
    return mp.CLEAN
  end
end
TrackPidAndTechnique("CMDHSTR", "T1018", "remote_system_discovery")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI
