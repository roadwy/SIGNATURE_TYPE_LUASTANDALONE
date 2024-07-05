local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
if L0_0 == nil then
  return mp.CLEAN
end
if string.find(L0_0, "\\system32", 1, true) ~= nil then
  return mp.INFECTED
end
if string.find(L0_0, "\\syswow64", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
