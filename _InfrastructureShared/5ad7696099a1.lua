if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_MED)
mp.AddDeferredBMAction("SmsAsyncScanEvent", 3000)
return mp.INFECTED
