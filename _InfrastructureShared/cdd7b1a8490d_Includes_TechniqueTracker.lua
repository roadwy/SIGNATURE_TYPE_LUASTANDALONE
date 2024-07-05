local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = GetRealPidForScenario
L1_1 = "CMDHSTR"
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L4_4 = L3_3.match
L4_4 = L4_4(L3_3, "/maxsize=(%d+)%%")
if L4_4 ~= nil and tonumber(L4_4) > 5 then
  return mp.CLEAN
end
L4_4 = L3_3:match("/maxsize=(%d+)gb")
if L4_4 ~= nil and tonumber(L4_4) > 2 then
  return mp.CLEAN
end
L4_4 = L3_3:match("/maxsize=(%d+)mb")
if L4_4 ~= nil and tonumber(L4_4) > 2000 then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil or mp.GetParentProcInfo().ppid == nil or mp.GetParentProcInfo().image_path == nil then
  return mp.CLEAN
end
if ({
  ["ccmexec.exe"] = true,
  ["gpscript.exe"] = true,
  ["mpcmdrun.exe"] = true,
  ["mssense.exe"] = true,
  ["senseir.exe"] = true
})[string.lower(mp.GetParentProcInfo().image_path:match("([^\\]+)$"))] then
  return mp.CLEAN
end
if IsPidExcluded(L0_0) or IsPidExcluded(mp.GetParentProcInfo().ppid) then
  return mp.CLEAN
end
TrackPidAndTechnique(L0_0, "T1490", "shadowcopy_delete_resize")
if IsTacticObservedForParents(L0_0, "susp_ransomware", 2) then
  return mp.INFECTED
end
if GetTacticsTableForPid(mp.GetParentProcInfo().ppid).winrshost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wsmprovhost_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wmi_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).remotedropexe_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).python_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).rundll32_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).wscript_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).cscript_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).mshta_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).webshell_childproc or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).exec_remotedroppedscript_a or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_blk or GetTacticsTableForPid(mp.GetParentProcInfo().ppid).folderguard_folder_blk then
  return mp.INFECTED
end
return mp.INFECTED
