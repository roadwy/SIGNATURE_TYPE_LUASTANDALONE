local L0_0
L0_0 = sms_untrusted_process
L0_0()
L0_0 = mp
L0_0 = L0_0.CLEAN
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[1].utf8p2, true)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[2].utf8p2, true)
end
if L0_0 == mp.INFECTED then
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN
