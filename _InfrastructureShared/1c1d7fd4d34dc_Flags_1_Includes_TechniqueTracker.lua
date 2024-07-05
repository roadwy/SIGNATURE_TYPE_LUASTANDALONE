local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 ~= nil then
  MpCommon.RequestSmsOnProcess(L0_0, MpCommon.SMS_SCAN_MED)
end
if mp.GetParentProcInfo() ~= nil then
  MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_MED)
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.001", "mptamper_av")
end
return mp.LOWFI
