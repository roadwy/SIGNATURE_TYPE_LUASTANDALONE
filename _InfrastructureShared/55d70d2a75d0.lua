local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L2_2 = L2_2(L3_3, "([^\\]+)$")
  if L2_2 ~= "powershell.exe" then
    L3_3 = string
    L3_3 = L3_3.find
    L3_3 = L3_3(L2_2, "^%d+%.exe")
  elseif L3_3 then
    L3_3 = mp
    L3_3 = L3_3.GetScannedPPID
    L3_3 = L3_3()
    if L3_3 == nil then
      return mp.CLEAN
    end
    MpCommon.RequestSmsOnProcess(L3_3, MpCommon.SMS_SCAN_LOW)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
