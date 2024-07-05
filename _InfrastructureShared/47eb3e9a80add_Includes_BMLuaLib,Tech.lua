local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p1
  L3_3 = L3_3(L4_4)
  L0_0 = L3_3
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[2]
    L4_4 = L4_4.utf8p1
    L3_3 = L3_3(L4_4)
    L1_1 = L3_3
  end
end
L3_3 = this_sigattrlog
L3_3 = L3_3[9]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[9]
  L3_3 = L3_3.utf8p1
  if L3_3 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L4_4 = this_sigattrlog
    L4_4 = L4_4[9]
    L4_4 = L4_4.utf8p2
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
  end
end
if L2_2 then
  L3_3 = pcall
  L4_4 = string
  L4_4 = L4_4.match
  L5_5 = L2_2
  L6_6 = "vmbaseaddress:(%d+)"
  L4_4 = L3_3(L4_4, L5_5, L6_6)
  if L3_3 then
    L5_5 = isnull
    L6_6 = L4_4
    L5_5 = L5_5(L6_6)
  elseif L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = pcall
  L6_6 = string
  L6_6 = L6_6.match
  L7_7 = L2_2
  L8_8 = "vmbytescopied:(%d+)"
  L6_6 = L5_5(L6_6, L7_7, L8_8)
  if L5_5 then
    L7_7 = isnull
    L8_8 = L6_6
    L7_7 = L7_7(L8_8)
  elseif L7_7 then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
  L7_7, L8_8 = nil, nil
  if L0_0 then
    L7_7 = L0_0
    L8_8 = "32"
  elseif L1_1 then
    L7_7 = L1_1
    L8_8 = "64"
  end
  if L7_7 then
    L9_9 = pcall
    L10_10 = sysio
    L10_10 = L10_10.GetPEVersionInfo
    L11_11 = L7_7
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
    bm.add_related_string("ARCH: ", L8_8, bm.RelatedStringBMReport)
  end
  L9_9 = bm
  L9_9 = L9_9.add_related_string
  L10_10 = "PATCHED BYTES: "
  L11_11 = L6_6
  L12_12 = bm
  L12_12 = L12_12.RelatedStringBMReport
  L9_9(L10_10, L11_11, L12_12)
  L9_9 = bm
  L9_9 = L9_9.add_related_string
  L10_10 = "ETW ABSOLUTE PATCHED ADDRESS: "
  L11_11 = L4_4
  L12_12 = bm
  L12_12 = L12_12.RelatedStringBMReport
  L9_9(L10_10, L11_11, L12_12)
  L9_9 = mp
  L9_9 = L9_9.INFECTED
  return L9_9
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
