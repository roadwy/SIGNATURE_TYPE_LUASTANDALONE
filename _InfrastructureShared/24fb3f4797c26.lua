local L0_0
if this_sigattrlog[8].matched then
  L0_0 = this_sigattrlog[8].np2
  if L0_0 ~= nil and mp.bitand(L0_0, 42) == 42 then
    return mp.INFECTED
  end
  return mp.CLEAN
end
return mp.INFECTED
