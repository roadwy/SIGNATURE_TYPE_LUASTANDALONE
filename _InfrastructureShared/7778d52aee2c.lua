local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 4000000 or L0_0 < 4000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "PEPCODE:HasDigitalSignature"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "pea_ismsil"
L1_1 = L1_1(L2_2)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "RPF:TopLevelFile"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L3_3 = L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3, mp.FILEPATH_QUERY_LOWERCASE))
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "program files", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "system32", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L2_2 = L2_2(L3_3, "syswow64", 1, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = hstrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = hstrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.match_offsets_count
  if L2_2 == 4 then
    L2_2 = pe
    L2_2 = L2_2.query_import
    L3_3 = pe
    L3_3 = L3_3.IMPORT_STATIC
    L2_2 = L2_2(L3_3, 2307734577)
    if L2_2 ~= 0 then
      L3_3 = hstrlog
      L3_3 = L3_3[1]
      L3_3 = L3_3.VA
      L3_3 = L3_3 + hstrlog[1].match_offsets[4]
      if L3_3 + 4 + mp.readu_u32(pe.mmap_va(L3_3, 4), 1) == L2_2 then
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
