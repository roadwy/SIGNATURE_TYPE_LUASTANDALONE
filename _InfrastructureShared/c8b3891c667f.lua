local L0_0
if this_sigattrlog[6].matched then
  L0_0 = string.lower(this_sigattrlog[6].utf8p2)
  if string.find(L0_0, "/download", 1, true) ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
