local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if string.find(L0_0, "-encoding", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
