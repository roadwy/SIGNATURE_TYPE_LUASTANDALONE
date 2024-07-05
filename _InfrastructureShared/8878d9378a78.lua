local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L5_5 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3, L4_4))
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "program files"
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "system32"
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "syswow64"
L5_5 = 1
L2_2 = L2_2(L3_3, L4_4, L5_5, true)
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
  if L2_2 == 3 then
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L3_3 = hstrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.VA
    L4_4 = hstrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.match_offsets
    L4_4 = L4_4[2]
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = string
    L3_3 = L3_3.find
    L4_4 = L2_2
    L5_5 = "\255\021"
    L3_3 = L3_3(L4_4, L5_5, 1, true)
    if L3_3 ~= nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = pe
    L4_4 = L4_4.query_import
    L5_5 = pe
    L5_5 = L5_5.IMPORT_STATIC
    L4_4 = L4_4(L5_5, 2307734577)
    if L4_4 ~= 0 then
      L5_5 = hstrlog
      L5_5 = L5_5[1]
      L5_5 = L5_5.VA
      L5_5 = L5_5 + hstrlog[1].match_offsets[3]
      if L5_5 + 4 + mp.readu_u32(pe.mmap_va(L5_5, 4), 1) == L4_4 then
        return mp.INFECTED
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
