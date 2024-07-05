local L0_0, L1_1
L0_0 = MpCommon
L0_0 = L0_0.RollingQueueCount
L1_1 = "TamperingAlerts"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil and L0_0 >= 2 then
  L1_1 = sms_untrusted_process
  L1_1()
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 then
    L1_1 = reportGenericRansomware(this_sigattrlog[1].utf8p2)
  elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
    L1_1 = reportGenericRansomware(this_sigattrlog[2].utf8p2)
  end
  if L1_1 == mp.INFECTED then
    reportTimingData()
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
