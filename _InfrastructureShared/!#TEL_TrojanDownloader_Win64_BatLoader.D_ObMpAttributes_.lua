local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 100000000 and L0_0 < 135000000 then
  L1_1 = mp
  L1_1 = L1_1.readu_u64
  L1_1 = L1_1(headerpage, 1)
  if L1_1 ~= -2226271756974174208 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L1_1 ~= true then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.GetMOTWZone
  L1_1 = L1_1()
  if L1_1 < 3 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.GetMOTWHostUrl
  L1_1 = L1_1()
  if L1_1 ~= nil and (string.find(L1_1, "4sync.com", 1, true) or string.find(L1_1, "4shared.com", 1, true)) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
