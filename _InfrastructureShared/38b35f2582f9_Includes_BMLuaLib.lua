local L0_0
L0_0 = getTamperProtectionSource
L0_0 = L0_0()
if L0_0 and mp.bitand(L0_0, 1) == 1 then
  return mp.INFECTED
end
return mp.CLEAN
