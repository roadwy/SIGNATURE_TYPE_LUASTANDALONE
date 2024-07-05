local L0_0
L0_0 = sms_untrusted_process
L0_0()
L0_0 = mp
L0_0 = L0_0.CLEAN
if this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[3].utf8p2)
end
if L0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
