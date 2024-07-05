local L0_0, L1_1
function L0_0(A0_2)
  if A0_2 == nil then
    return false
  end
  return checkParentCmdline(A0_2, {
    {
      "/opt/microsoft/mdatp/sbin/wdavdaemon",
      ""
    },
    {
      "",
      "python3 -u bin/WALinuxAgent"
    }
  }, 3)
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
if isParentPackageManager(L1_1) or L0_0(L1_1) then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil then
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.004", "DefenseEvasion")
end
if L1_1 ~= nil and (IsTacticObservedForPid(L1_1, "CommandAndControl_RemoteFileCopy") or IsTacticObservedForParents(L1_1, "CommandAndControl_RemoteFileCopy", 2)) then
  return mp.INFECTED
end
return mp.CLEAN
