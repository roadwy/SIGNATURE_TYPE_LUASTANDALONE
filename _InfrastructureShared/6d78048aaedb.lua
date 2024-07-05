local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[3]
L0_0 = L0_0.VA
L0_0 = L0_0 + 42
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L1_1
L2_2 = L2_2(L3_3, 1)
if L2_2 == 69 then
  L0_0 = L0_0 + 5
else
  L2_2 = string
  L2_2 = L2_2.byte
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, 1)
  if L2_2 == 133 then
    L0_0 = L0_0 + 8
  else
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = L0_0
L2_2 = L2_2(L3_3, 4)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L1_1
L2_2 = L2_2(L3_3, 1)
L3_3 = pe
L3_3 = L3_3.mmap_va
L3_3 = L3_3(L2_2, 16)
if string.sub(L3_3, 1, 7) == "dfghjkl" then
  return mp.INFECTED
end
if string.sub(L3_3, 1, 14) == "dfertter2342zc" then
  return mp.INFECTED
end
return mp.CLEAN
