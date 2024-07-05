local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L7_7 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1(L2_2, L3_3))
L1_1 = pe
L1_1 = L1_1.get_exports
L2_2 = L1_1()
if L0_0 ~= nil and L1_1 > 2 and L1_1 < 15 then
  L6_6 = -5
  L0_0 = L3_3
  for L6_6 = 1, L1_1 do
    L7_7 = pe
    L7_7 = L7_7.mmap_string_rva
    L7_7 = L7_7(L2_2[L6_6].namerva, 64)
    if L7_7 ~= nil and string.lower(L7_7) == L0_0 then
      mp.set_mpattribute("do_exhaustivehstr_64bit_rescan")
      return mp.INFECTED
    end
  end
end
return L3_3
