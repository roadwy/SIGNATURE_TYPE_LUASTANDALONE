if mp.GetParentProcInfo() ~= nil then
  MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_MED)
  mp.SMSAsyncScan(mp.GetParentProcInfo().ppid)
  return mp.LOWFI
end
return mp.CLEAN
