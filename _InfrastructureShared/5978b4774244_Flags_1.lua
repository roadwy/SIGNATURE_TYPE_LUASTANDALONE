local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.VA
  L0_0 = L0_0 + 6
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = pe
  L2_2 = L2_2.mmap_va
  L2_2 = L2_2(L0_0, 4)
  L1_1 = L1_1(L2_2, 1)
  L2_2 = pe
  L2_2 = L2_2.mmap_va
  L2_2 = L2_2(L1_1, 10)
  if string.sub(L2_2, 1, 7) == "Alina v" and string.sub(L2_2, 9, 9) == "." then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
