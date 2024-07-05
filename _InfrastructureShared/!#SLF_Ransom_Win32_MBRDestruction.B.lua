local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMOUNT
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L1_1 < 512 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L1_1 = L1_1(L2_2, 511)
if L1_1 == 43605 then
  L1_1 = tostring
  L2_2 = headerpage
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L1_1, 1, 512)
  if L2_2 == nil then
    return mp.CLEAN
  end
  L2_2 = string.lower(L2_2)
  if string.find(L2_2, "ransom", 1, true) or string.find(L2_2, "bitcoin", 1, true) or string.find(L2_2, "wallet", 1, true) or string.find(L2_2, "encrypt", 1, true) or string.find(L2_2, "decrypt", 1, true) or string.find(L2_2, "instruction", 1, true) or string.find(L2_2, " pay", 1, true) or string.find(L2_2, "email", 1, true) then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
