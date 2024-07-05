local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = pe
L3_3 = L3_3.mmap_va
L3_3 = L3_3(hstrlog[1].VA + 11, 4)
L2_2 = L2_2(L3_3, 1)
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
L1_1 = pe
L1_1 = L1_1.get_api_id
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == 137326890 then
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L3_3 = L3_3(hstrlog[1].VA + 5, 4)
  L2_2 = L2_2(L3_3, 1)
  L3_3 = mp
  L3_3 = L3_3.utf16to8
  L3_3 = L3_3(pe.mmap_va(L2_2, 12))
  if L3_3 == "12345\000" then
    L2_2 = mp.readu_u32(pe.mmap_va(hstrlog[1].VA + 16, 4), 1)
    L3_3 = mp.utf16to8(pe.mmap_va(L2_2, 14))
    if L3_3 == "string\000" then
      L2_2 = mp.readu_u32(pe.mmap_va(hstrlog[1].VA + 27, 4), 1)
      L3_3 = pe.mmap_va(L2_2, 6)
      if L3_3 == "12345\000" then
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
