local L0_0
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 ~= nil and mp.bitand(L0_0, 15) >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
