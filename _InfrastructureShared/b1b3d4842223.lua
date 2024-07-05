local L0_0
L0_0 = ""
if this_sigattrlog[1].matched then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
elseif this_sigattrlog[3].matched then
  L0_0 = string.lower(this_sigattrlog[3].utf8p2)
end
if L0_0 ~= nil and string.len(L0_0) > 10 and string.find(L0_0, "pskill", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
