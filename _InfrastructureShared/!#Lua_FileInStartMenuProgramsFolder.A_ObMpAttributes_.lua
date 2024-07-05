local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if L0_0 ~= nil and string.len(L0_0) > 40 and string.find(L0_0, "\\microsoft\\windows\\start menu\\programs", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
