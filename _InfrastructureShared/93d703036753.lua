local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if string.find(L1_1, "schtasks.exe", 1, true) and L0_0.ppid ~= nil then
    if mp.GetParentProcInfo(L0_0.ppid) ~= nil then
      MpCommon.RequestSmsOnProcess(mp.GetParentProcInfo(L0_0.ppid).ppid, MpCommon.SMS_SCAN_MED)
      mp.SMSAsyncScan(mp.GetParentProcInfo(L0_0.ppid).ppid)
      return mp.LOWFI
    end
  else
    MpCommon.RequestSmsOnProcess(L0_0.ppid, MpCommon.SMS_SCAN_MED)
    mp.SMSAsyncScan(L0_0.ppid)
    return mp.LOWFI
  end
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
