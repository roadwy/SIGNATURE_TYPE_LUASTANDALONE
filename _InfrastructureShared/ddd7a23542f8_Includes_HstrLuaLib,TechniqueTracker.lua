local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L0_0
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
L2_2 = false
L3_3 = "(set-service[\\w\\s-]+(windefend|microsoft defender antivirus service)[\\w\\s-]+(disabled|manual))"
L2_2, _ = MpCommon.StringRegExpSearch(L3_3, L1_1)
if L2_2 == false then
  return mp.CLEAN
end
if mp.GetParentProcInfo() ~= nil then
  MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_MED)
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.001", "mptamper_av")
end
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED
