local L0_0, L1_1, L2_2
L0_0 = 0
L1_1 = hstrlog
L1_1 = L1_1[8]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[8]
  L1_1 = L1_1.VA
  L1_1 = L1_1 + 4
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L2_2 = L2_2(pe.mmap_va(L1_1, 4), 1)
  if pe.mmap_va(L2_2, 11) == "~backup.dat" then
    return mp.INFECTED
  end
  L0_0 = 3
end
L1_1 = mp
L1_1 = L1_1.HSTR_WEIGHT
L1_1 = L1_1 - L0_0
if L1_1 >= 6 then
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
