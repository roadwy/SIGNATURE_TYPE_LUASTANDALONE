local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 4 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 3 then
  L0_0 = hstrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[4]
    L0_0 = L0_0.VA
    L0_0 = L0_0 + 18
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L2_2 = L2_2(L0_0, 4)
    L1_1 = L1_1(L2_2, 1)
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L2_2 = L2_2(L1_1, 6)
    if string.sub(L2_2, 1, 5) == "MyApp" then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
