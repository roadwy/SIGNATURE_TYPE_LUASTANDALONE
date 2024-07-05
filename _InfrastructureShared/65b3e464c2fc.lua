local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if L0_0 ~= nil and (L0_0:match("\\windows\\tasks\\") or L0_0:match("\\windows\\system32\\tasks\\")) then
  return mp.INFECTED
end
return mp.CLEAN
