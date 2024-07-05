local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if analyzeEsxcliProcessPattern(L0_0) == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN
