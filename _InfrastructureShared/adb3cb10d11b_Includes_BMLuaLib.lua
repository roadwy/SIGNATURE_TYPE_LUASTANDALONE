local L0_0
if this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[3].utf8p2, true)
elseif this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[1].utf8p2, true)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[2].utf8p2, true)
end
if L0_0 == mp.INFECTED then
  reportSessionInformation()
  return mp.INFECTED
end
return mp.CLEAN
