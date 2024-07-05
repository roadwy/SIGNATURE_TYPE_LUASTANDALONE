if mp.GetParentProcInfo() ~= nil then
  if string.match(string.lower(mp.GetParentProcInfo().image_path), "([^\\]+)$") == "powershell.exe" then
    return mp.CLEAN
  end
  if string.match(string.lower(mp.GetParentProcInfo().image_path), "([^\\]+)$") == "cmd.exe" then
    return mp.CLEAN
  end
  MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_MED)
  mp.AddDeferredBMAction("SmsAsyncScanEvent", 10000)
  return mp.INFECTED
end
return mp.CLEAN
