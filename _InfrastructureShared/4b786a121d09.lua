local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L2_2 = hstrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.VA
  L2_2 = L2_2 + 9
  L3_3 = 4
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = 1
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = mp
  L1_1 = L1_1.bitand
  L2_2 = hstrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.VA
  L2_2 = L0_0 + L2_2
  L2_2 = L2_2 + 13
  L3_3 = 4294967295
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = pe
  L2_2 = L2_2.mmap_va
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, 1)
  if L2_2 == "h" then
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L3_3("PUA:Block:InstallCore")
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.readu_u32
  L3_3 = L3_3(pe.mmap_va(hstrlog[2].VA + 14, 4), 1)
  L0_0 = L3_3
  L3_3 = mp
  L3_3 = L3_3.bitand
  L3_3 = L3_3(L0_0 + hstrlog[2].VA + 18, 4294967295)
  L1_1 = L3_3
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L3_3 = L3_3(L1_1, 10)
  if string.find(L3_3, "\233..\255\255") ~= nil then
    L0_0 = mp.readu_u32(pe.mmap_va(L1_1 + string.find(L3_3, "\233..\255\255"), 4), 1)
    L1_1 = mp.bitand(L0_0 + L1_1 + string.find(L3_3, "\233..\255\255") + 5 - 1, 4294967295)
  end
  L2_2 = pe.mmap_va(L1_1, 1)
  if L2_2 == "h" or L2_2 >= "\185" and L2_2 < "\192" then
    mp.set_mpattribute("PUA:Block:InstallCore")
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
