local L0_0
if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  L0_0 = string.lower(this_sigattrlog[1].utf8p2)
end
if string.find(L0_0, "/sc%s+onlogon") == nil then
  return mp.CLEAN
end
if string.find(L0_0, "/ru%s+\"?system\"?") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
