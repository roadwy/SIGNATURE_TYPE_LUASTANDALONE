local L0_0
if this_sigattrlog[5].matched then
  L0_0 = this_sigattrlog[5].utf8p2
elseif this_sigattrlog[6].matched then
  L0_0 = this_sigattrlog[6].utf8p2
else
  return mp.CLEAN
end
if L0_0 == nil or string.len(L0_0) == 0 then
  return mp.CLEAN
end
return mp.INFECTED
