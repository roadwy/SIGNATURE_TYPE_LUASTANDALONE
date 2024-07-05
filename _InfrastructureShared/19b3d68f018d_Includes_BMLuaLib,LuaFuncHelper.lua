local L0_0
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
if not L0_0 or not L0_0.utf8p2 then
  return mp.CLEAN
end
takeMemorySnapshot(L0_0.utf8p2)
return mp.INFECTED
