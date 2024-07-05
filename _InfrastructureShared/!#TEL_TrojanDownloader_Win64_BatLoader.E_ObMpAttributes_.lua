local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 100000000 and L0_0 < 135000000 then
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = headerpage
  L3_3 = 1
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= 67324752 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L2_2 = false
  L1_1(L2_2)
  L1_1 = 276
  L2_2 = mp
  L2_2 = L2_2.readfile
  L3_3 = L0_0 - L1_1
  L4_4 = L1_1
  L2_2 = L2_2(L3_3, L4_4)
  L3_3 = mp
  L3_3 = L3_3.readprotection
  L4_4 = true
  L3_3(L4_4)
  if L2_2 == nil then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, ".msi", 1, true)
  if L3_3 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L4_4 = L4_4(mp.CONTEXT_DATA_HAS_MOTW_ADS)
  if L4_4 ~= true then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.GetMOTWZone
  L4_4 = L4_4()
  if L4_4 < 3 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.GetMOTWHostUrl
  L4_4 = L4_4()
  if L4_4 ~= nil and (string.find(L4_4, "4sync.com", 1, true) or string.find(L4_4, "4shared.com", 1, true)) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
