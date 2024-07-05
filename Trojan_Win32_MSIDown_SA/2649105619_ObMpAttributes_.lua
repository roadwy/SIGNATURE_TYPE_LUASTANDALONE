local L0_0
L0_0 = mp
L0_0 = L0_0.readu_u64
L0_0 = L0_0(headerpage, 1)
if L0_0 ~= -2226271756974174208 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_HAS_MOTW_ADS)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetMOTWZone
L0_0 = L0_0()
if L0_0 < 3 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetMOTWHostUrl
L0_0 = L0_0()
if L0_0 ~= nil and string.find(L0_0, ".email", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
