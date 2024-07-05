local L0_0
if this_sigattrlog[1].matched then
  L0_0 = this_sigattrlog[1].utf8p2
  if string.find(L0_0, "/format:", 1, true) ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
