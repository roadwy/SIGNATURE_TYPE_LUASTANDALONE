local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if string.find(L0_0, ":\\windows\\system32\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
