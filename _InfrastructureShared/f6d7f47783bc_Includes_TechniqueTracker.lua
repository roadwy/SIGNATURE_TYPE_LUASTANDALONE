local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = GetRealPidForScenario
L1_1 = "CMDHSTR"
L0_0 = L0_0(L1_1)
L1_1 = IsPidExcluded
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
if L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    L2_2 = L1_1.image_path
  end
elseif L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1.image_path
L3_3 = string
L3_3 = L3_3.lower
L5_5 = L2_2
L4_4 = L2_2.match
L5_5 = L4_4(L5_5, "([^\\]+)$")
L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5, "([^\\]+)$"))
L4_4 = {}
L4_4["ccmexec.exe"] = true
L4_4["gpscript.exe"] = true
L4_4["mpcmdrun.exe"] = true
L4_4["mssense.exe"] = true
L4_4["senseir.exe"] = true
L5_5 = L4_4[L3_3]
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.GetProcessCommandLine
L5_5 = L5_5(L1_1.ppid)
if L5_5 == "" or L5_5 == nil then
  return mp.CLEAN
end
L5_5 = string.lower(L5_5)
if L5_5:find("\\nessus", 1, true) then
  return mp.CLEAN
end
if GetTacticsTableForPid(L1_1.ppid).winrshost_childproc or GetTacticsTableForPid(L1_1.ppid).wsmprovhost_childproc or GetTacticsTableForPid(L1_1.ppid).wmi_childproc or GetTacticsTableForPid(L1_1.ppid).remotedropexe_childproc or GetTacticsTableForPid(L1_1.ppid).python_childproc or GetTacticsTableForPid(L1_1.ppid).rundll32_childproc or GetTacticsTableForPid(L1_1.ppid).wscript_childproc or GetTacticsTableForPid(L1_1.ppid).cscript_childproc or GetTacticsTableForPid(L1_1.ppid).mshta_childproc or GetTacticsTableForPid(L1_1.ppid).webshell_childproc or GetTacticsTableForPid(L1_1.ppid).exec_remotedroppedscript_a then
  return mp.INFECTED
end
TrackPidAndTechnique(L0_0, "T1003", "shadowcopy_access")
if IsDetectionThresholdMet(L0_0) then
  return mp.INFECTED
end
return mp.LOWFI
