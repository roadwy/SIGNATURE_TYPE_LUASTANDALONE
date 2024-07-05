local L0_0, L1_1, L2_2, L3_3
L0_0 = 0
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.VA
  L1_1 = L1_1 + 32
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L3_3 = L3_3(L1_1, 4)
  L2_2 = L2_2(L3_3, 1)
  L3_3 = mp
  L3_3 = L3_3.utf16to8
  L3_3 = L3_3(pe.mmap_va(L2_2, 40))
  if string.match(L3_3, "ServerL") or string.match(L3_3, "rList") then
    return mp.INFECTED
  end
  L0_0 = 3
end
L1_1 = mp
L1_1 = L1_1.HSTR_WEIGHT
L1_1 = L1_1 - L0_0
if L1_1 >= 5 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
else
  L1_1 = mp
  L1_1 = L1_1.HSTR_WEIGHT
  L1_1 = L1_1 - L0_0
  if L1_1 >= 4 then
    L1_1 = mp
    L1_1 = L1_1.SUSPICIOUS
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
