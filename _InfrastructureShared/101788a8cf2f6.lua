local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = hstrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readprotection
  L1_1 = false
  L0_0(L1_1)
  L0_0 = pe
  L0_0 = L0_0.mmap_va
  L1_1 = hstrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.VA
  L1_1 = L1_1 - 27
  L2_2 = 80
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = pe
  L2_2 = L2_2.mmap_va
  L2_2 = L2_2(L3_3, L4_4)
  for L6_6 = 1, 16 do
    if string.byte(L2_2, L6_6) < 48 or string.byte(L2_2, L6_6) > 90 or string.byte(L2_2, L6_6) == 64 then
      return mp.CLEAN
    end
  end
  return L3_3
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
