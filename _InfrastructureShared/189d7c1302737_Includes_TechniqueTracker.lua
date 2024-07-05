local L0_0
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  return mp.CLEAN
end
if IsTechniqueObservedForParents(L0_0, "T1047", 2) or IsTechniqueObservedForParents(L0_0, "T1021.006", 2) then
  return mp.INFECTED
end
return mp.LOWFI
