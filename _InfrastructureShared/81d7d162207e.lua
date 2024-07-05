if mp.GetParentProcInfo() ~= nil then
  MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_HIGH)
  mp.SMSAsyncScan(mp.GetParentProcInfo().ppid)
  return mp.LOWFI
end
return mp.CLEAN
