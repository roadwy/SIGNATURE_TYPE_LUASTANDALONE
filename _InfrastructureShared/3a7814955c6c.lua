local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0 + 30
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 0
for L6_6 = 4, 1, -1 do
  L2_2 = L2_2 * 256 + string.byte(L1_1, L6_6)
end
if L4_4 ~= L3_3 then
  return L4_4
end
return L4_4
