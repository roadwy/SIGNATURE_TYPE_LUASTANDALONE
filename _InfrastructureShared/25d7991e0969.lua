local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if mp.GetProcessCommandLine(L0_0) == nil then
  return mp.CLEAN
end
if mp.GetProcessCommandLine(L0_0) ~= "regsvr32.exe " then
  return mp.CLEAN
end
if mp.GetParentProcInfo() == nil then
  return mp.CLEAN
end
if string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$") ~= "regsvr32.exe" then
  return mp.CLEAN
end
MpCommon.RequestSmsOnProcess(L0_0, MpCommon.SMS_SCAN_MED)
MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo().ppid, MpCommon.SMS_SCAN_MED)
return mp.INFECTED
