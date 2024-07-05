local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
elseif this_sigattrlog[2].matched and this_sigattrlog[2].wp2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
end
if L0_0 and (string.match(L0_0, "%d+%.%d+%.%d+%.%d+") or string.find(L0_0, "githubusercontent", 1, true) or string.find(L0_0, "pastebin", 1, true) or string.find(L0_0, "bit.ly", 1, true) or string.find(L0_0, "goo.gl", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
