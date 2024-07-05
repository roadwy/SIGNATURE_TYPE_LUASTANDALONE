local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if L0_0 and string.len(L0_0) > 50 then
  return mp.INFECTED
end
return mp.CLEAN
