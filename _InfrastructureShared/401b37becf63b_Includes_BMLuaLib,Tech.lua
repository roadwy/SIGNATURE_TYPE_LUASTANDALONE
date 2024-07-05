local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = this_sigattrlog
  L5_5 = L5_5[1]
  L5_5 = L5_5.utf8p1
  L4_4 = L4_4(L5_5)
  L0_0 = L4_4
else
  L4_4 = this_sigattrlog
  L4_4 = L4_4[2]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[2]
    L5_5 = L5_5.utf8p1
    L4_4 = L4_4(L5_5)
    L1_1 = L4_4
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[12]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[12]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[12]
    L5_5 = L5_5.utf8p2
    L4_4 = L4_4(L5_5)
    L2_2 = L4_4
  end
end
L4_4 = this_sigattrlog
L4_4 = L4_4[10]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[10]
  L4_4 = L4_4.utf8p2
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[10]
    L5_5 = L5_5.utf8p2
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
  end
end
if L2_2 and L3_3 then
  L4_4 = pcall
  L5_5 = string
  L5_5 = L5_5.match
  L6_6 = L2_2
  L7_7 = "regionsize:(%d+)"
  L5_5 = L4_4(L5_5, L6_6, L7_7)
  if L4_4 then
    L6_6 = isnull
    L7_7 = L5_5
    L6_6 = L6_6(L7_7)
  elseif L6_6 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6, L7_7 = nil, nil
  L8_8 = versioning
  L8_8 = L8_8.GetProcessorArchitecture
  L8_8 = L8_8()
  if L8_8 == 0 then
    L6_6 = L1_1
    L7_7 = "32"
  elseif L8_8 == 9 then
    L9_9 = this_sigattrlog
    L9_9 = L9_9[1]
    L9_9 = L9_9.matched
    if L9_9 then
      L6_6 = L0_0
      L7_7 = "32"
    else
      L9_9 = this_sigattrlog
      L9_9 = L9_9[2]
      L9_9 = L9_9.matched
      if L9_9 then
        L6_6 = L1_1
        L7_7 = "64"
      end
    end
  end
  if L6_6 then
    L9_9 = pcall
    L10_10 = sysio
    L10_10 = L10_10.GetPEVersionInfo
    L11_11 = L6_6
    L10_10 = L9_9(L10_10, L11_11)
    if L9_9 then
      L11_11 = isnull
      L12_12 = L10_10
      L11_11 = L11_11(L12_12)
    elseif L11_11 then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L11_11 = L10_10.OriginalFilename
    L12_12 = L10_10.ProductVersion
    L13_13 = L10_10.FileVersion
    if isnull(L11_11) or isnull(L12_12) or isnull(L13_13) then
      return mp.CLEAN
    end
    bm.add_related_string("PRODUCT VERSION: ", L12_12, bm.RelatedStringBMReport)
    bm.add_related_string("FILE VERSION: ", L13_13, bm.RelatedStringBMReport)
    bm.add_related_string("ARCH: ", L7_7, bm.RelatedStringBMReport)
  end
  L9_9 = bm
  L9_9 = L9_9.add_related_string
  L10_10 = "PATCHED BYTES: "
  L11_11 = L5_5
  L12_12 = bm
  L12_12 = L12_12.RelatedStringBMReport
  L9_9(L10_10, L11_11, L12_12)
  L9_9 = bm
  L9_9 = L9_9.add_related_string
  L10_10 = "MALCIOUS PATH: "
  L11_11 = L3_3
  L12_12 = bm
  L12_12 = L12_12.RelatedStringBMReport
  L9_9(L10_10, L11_11, L12_12)
  L9_9 = mp
  L9_9 = L9_9.INFECTED
  return L9_9
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
