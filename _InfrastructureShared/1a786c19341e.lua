local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = pehdr
L0_0 = L0_0.AddressOfEntryPoint
L1_1 = pehdr
L1_1 = L1_1.ImageBase
L0_0 = L0_0 + L1_1
L1_1, L2_2 = nil, nil
L3_3 = hstrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L1_1 = 14
  L3_3 = hstrlog
  L3_3 = L3_3[1]
  L2_2 = L3_3.VA
end
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = L2_2
L5_5 = 21
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L3_3
L4_4 = L4_4(L5_5, L1_1)
L5_5 = L2_2 + L1_1
L5_5 = L5_5 + 3
L5_5 = L5_5 + L4_4
L5_5 = mp.bitand(L5_5, 4294967295)
if L5_5 == L0_0 then
  return mp.INFECTED
end
return mp.CLEAN
