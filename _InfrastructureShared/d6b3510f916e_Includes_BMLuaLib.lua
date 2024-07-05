local L0_0
L0_0 = mp
L0_0 = L0_0.CLEAN
if this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[4].utf8p2, true)
elseif this_sigattrlog[5].matched and this_sigattrlog[5].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[5].utf8p2, true)
end
if L0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
