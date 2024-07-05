if mp.GetParentProcInfo() ~= nil then
  MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_MED)
  TrackPidAndTechnique(mp.GetParentProcInfo().ppid, "T1562.001", "mptamper_av")
end
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED
