local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
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
L10_10 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L2_2(L3_3, L4_4))
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "program files"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "system32"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "syswow64"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pe
L2_2 = L2_2.get_versioninfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.OriginalFilename
  L4_4 = L2_2.CompanyName
  if L3_3 and L4_4 then
    L5_5 = string
    L5_5 = L5_5.find
    L6_6 = string
    L6_6 = L6_6.lower
    L7_7 = L3_3
    L6_6 = L6_6(L7_7)
    L7_7 = "packageinspector.exe"
    L8_8 = 1
    L9_9 = true
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    if not L5_5 then
      L5_5 = string
      L5_5 = L5_5.find
      L6_6 = string
      L6_6 = L6_6.lower
      L7_7 = L3_3
      L6_6 = L6_6(L7_7)
      L7_7 = "resetengine.dll"
      L8_8 = 1
      L9_9 = true
      L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    elseif L5_5 then
      L5_5 = string
      L5_5 = L5_5.find
      L6_6 = string
      L6_6 = L6_6.lower
      L7_7 = L4_4
      L6_6 = L6_6(L7_7)
      L7_7 = "microsoft corporation"
      L8_8 = 1
      L9_9 = true
      L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
      if L5_5 then
        L5_5 = mp
        L5_5 = L5_5.CLEAN
        return L5_5
      end
    end
  end
end
L3_3 = hstrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = hstrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = hstrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.match_offsets_count
    if L3_3 == 2 then
      L3_3 = hstrlog
      L3_3 = L3_3[2]
      L3_3 = L3_3.match_offsets_count
      if L3_3 == 2 then
        L3_3 = pe
        L3_3 = L3_3.mmap_va
        L4_4 = hstrlog
        L4_4 = L4_4[1]
        L4_4 = L4_4.VA
        L5_5 = hstrlog
        L5_5 = L5_5[1]
        L5_5 = L5_5.match_offsets
        L5_5 = L5_5[2]
        L3_3 = L3_3(L4_4, L5_5)
        if L3_3 == nil then
          L4_4 = mp
          L4_4 = L4_4.CLEAN
          return L4_4
        end
        L4_4 = pe
        L4_4 = L4_4.mmap_va
        L5_5 = hstrlog
        L5_5 = L5_5[2]
        L5_5 = L5_5.VA
        L6_6 = hstrlog
        L6_6 = L6_6[2]
        L6_6 = L6_6.match_offsets
        L6_6 = L6_6[2]
        L4_4 = L4_4(L5_5, L6_6)
        if L4_4 == nil then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
        L5_5 = pe
        L5_5 = L5_5.query_import
        L6_6 = pe
        L6_6 = L6_6.IMPORT_STATIC
        L7_7 = 946125367
        L5_5 = L5_5(L6_6, L7_7)
        L6_6 = pe
        L6_6 = L6_6.query_import
        L7_7 = pe
        L7_7 = L7_7.IMPORT_STATIC
        L8_8 = 3434090342
        L6_6 = L6_6(L7_7, L8_8)
        L7_7 = pe
        L7_7 = L7_7.query_import
        L8_8 = pe
        L8_8 = L8_8.IMPORT_STATIC
        L9_9 = 2470684812
        L7_7 = L7_7(L8_8, L9_9)
        L8_8 = false
        L9_9 = false
        if L5_5 ~= 0 or L6_6 ~= 0 then
          L10_10 = hstrlog
          L10_10 = L10_10[1]
          L10_10 = L10_10.VA
          L10_10 = L10_10 + hstrlog[1].match_offsets[2]
          if L10_10 + 4 + mp.readu_u32(pe.mmap_va(L10_10, 4), 1) == L5_5 or L10_10 + 4 + mp.readu_u32(pe.mmap_va(L10_10, 4), 1) == L6_6 then
            L8_8 = true
          end
        end
        if L7_7 ~= 0 then
          L10_10 = hstrlog
          L10_10 = L10_10[2]
          L10_10 = L10_10.VA
          L10_10 = L10_10 + hstrlog[2].match_offsets[2]
          if L10_10 + 4 + mp.readu_u32(pe.mmap_va(L10_10, 4), 1) == L7_7 then
            L9_9 = true
          end
        end
        if L8_8 and L9_9 then
          L10_10 = mp
          L10_10 = L10_10.INFECTED
          return L10_10
        end
      end
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
