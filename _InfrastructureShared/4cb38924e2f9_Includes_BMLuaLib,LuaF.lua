local L0_0
L0_0 = reportAVExcludedEntities
L0_0 = L0_0()
if next(L0_0) then
  return mp.INFECTED
end
return mp.CLEAN
