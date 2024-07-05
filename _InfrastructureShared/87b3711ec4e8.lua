local L0_0
if this_sigattrlog[2].matched then
  L0_0 = string.lower(this_sigattrlog[2].utf8p2)
  if L0_0 ~= nil and string.len(L0_0) > 3 and string.find(L0_0, " for ", 1, true) and string.find(L0_0, " in ", 1, true) and string.find(L0_0, " do ", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
