local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if string.find(L0_0, "\\windows\\ccmcache\\", 1, true) then
  return mp.CLEAN
end
if string.find(L0_0, "\\windows\\ccm\\systemtemp\\", 1, true) then
  return mp.CLEAN
end
if string.find(L0_0, "\\microsoft\\windows defender advanced threat protection\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
