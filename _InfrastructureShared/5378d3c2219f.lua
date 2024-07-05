local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.isvbnative
if L0_0 == true then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.VA
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = L0_0 + 7
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = 0
  for L6_6 = 4, 1, -1 do
    L2_2 = L2_2 * 256 + string.byte(L1_1, L6_6)
  end
  if L2_2 > 8192 then
    return L3_3
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
