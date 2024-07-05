local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 then
  L0_0 = reportGenericRansomware(this_sigattrlog[1].utf8p2, true)
end
if L0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
