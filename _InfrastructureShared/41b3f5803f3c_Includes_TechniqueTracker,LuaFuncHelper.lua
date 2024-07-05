local L0_0, L1_1
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p1 ~= nil then
  L0_0 = this_sigattrlog[2].utf8p1
  L1_1 = this_sigattrlog[2].ppid
end
if L0_0 == nil or L1_1 == nil then
  return mp.CLEAN
end
if IsPidExcluded(L1_1) then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if StringStartsWith(L0_0, "%") then
  return mp.CLEAN
end
if MpCommon.QueryPersistContext(L0_0, "NewPECreatedNoCert") then
  bm.trigger_sig("ExecNewlyCreatedUnsignedExe", "ExecNewlyCreatedUnsignedExe", L1_1)
end
if IsKeyInRollingQueue("SuspExeFileDroppedViaSMB", L0_0, true) then
  bm.trigger_sig("ExecRemoteDroppedExe", "ExecRemoteDroppedExe", L1_1)
  bm.trigger_sig("T1570", "exec_remotedroppedexe_a", L1_1)
  return mp.INFECTED
end
if IsKeyInRollingQueue("DroppedByPossibleRemotelyCreatedProc", L0_0, true) then
  bm.trigger_sig("T1570", "exec_remotedroppedexe_b", L1_1)
  return mp.INFECTED
end
return mp.CLEAN
