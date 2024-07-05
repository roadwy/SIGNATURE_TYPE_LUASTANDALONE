local L0_0
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p1)
else
  return mp.CLEAN
end
if L0_0 == nil then
  return mp.CLEAN
end
if L0_0 ~= nil and (string.find(L0_0, "\\microsoft\\onedrive\\", 1, true) or string.find(L0_0, "\\microsoft\\teams\\", 1, true)) then
  bm.add_related_file(L0_0)
  return mp.INFECTED
end
return mp.CLEAN
