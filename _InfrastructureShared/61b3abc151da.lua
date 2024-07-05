local L0_0, L1_1
if this_sigattrlog[1].matched and this_sigattrlog[1].wp2 ~= nil then
  L0_0 = this_sigattrlog[1].utf8p2
end
if this_sigattrlog[2].matched and this_sigattrlog[2].wp1 ~= nil then
  L1_1 = this_sigattrlog[2].utf8p1
end
L0_0 = string.match(L0_0, "-f%s+(.+)"):gsub("%s*$", "")
L1_1 = string.match(L1_1, "/%a.+/(.+)$")
if L0_0 == L1_1 then
  return mp.INFECTED
end
return mp.CLEAN
