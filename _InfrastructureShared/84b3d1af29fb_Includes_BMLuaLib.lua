local L0_0
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L0_0 = L0_0("c1db55ab-c21a-4637-bb3f-a12568109d35")
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 then
    L0_0 = reportGenericRansomware(this_sigattrlog[1].utf8p2)
  elseif this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 then
    L0_0 = reportGenericRansomware(this_sigattrlog[2].utf8p2)
  end
  if L0_0 == mp.INFECTED then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
