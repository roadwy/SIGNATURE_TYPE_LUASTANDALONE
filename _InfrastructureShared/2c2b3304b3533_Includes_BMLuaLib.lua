local L0_0
L0_0 = mp
L0_0 = L0_0.CLEAN
if this_sigattrlog[16].matched and this_sigattrlog[16].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[16].utf8p2, true)
elseif this_sigattrlog[17].matched and this_sigattrlog[17].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[17].utf8p2, true)
end
if L0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
