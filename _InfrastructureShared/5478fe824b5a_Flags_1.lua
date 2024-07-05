local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = hstrlog
L2_2 = L2_2[1]
L2_2 = L2_2.VA
L2_2 = L2_2 + 11
L1_1 = L1_1(L2_2, 4)
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0
L1_1 = L1_1(L2_2, 12)
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "%w%z%w%z%w%z%w%z%w%z%z%z")
if L2_2 >= 0 then
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L2_2 = L2_2(pe.mmap_va(hstrlog[3].VA + 15, 4), 1)
  L0_0 = L2_2
  L2_2 = pe
  L2_2 = L2_2.mmap_va
  L2_2 = L2_2(L0_0, 12)
  if string.find(L2_2, "%w%z%w%z%w%z%w%z%w%z%z%z") >= 0 then
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
