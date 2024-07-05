local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = versioning
L0_0 = L0_0.GetTestMode
L0_0 = L0_0()
if L0_0 ~= 65000 then
  L0_0 = versioning
  L0_0 = L0_0.GetCloudBlockLevel
  L0_0 = L0_0()
  if L0_0 < 4 then
    L0_0 = MpCommon
    L0_0 = L0_0.IsSampled
    L1_1 = 1000
    L2_2 = true
    L3_3 = true
    L4_4 = true
    L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4)
    if L0_0 == false then
      L0_0 = mp
      L0_0 = L0_0.CLEAN
      return L0_0
    end
  end
end
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.np1
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.bitand
L2_2 = L0_0
L3_3 = 65535
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L1_1
L1_1 = this_sigattrlog
L1_1 = L1_1[5]
L1_1 = L1_1.utf8p1
L2_2 = 1
L4_4 = L1_1
L3_3 = L1_1.match
L5_5 = "[%w%-%.]*%.[%w%-]+%.[%w]+"
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = lastIndexOf
L4_4 = L1_1
L5_5 = "."
L6_6 = #L1_1
L6_6 = L6_6 - 7
L3_3 = L3_3(L4_4, L5_5, L6_6)
L4_4 = string
L4_4 = L4_4.lower
L5_5 = string
L5_5 = L5_5.sub
L6_6 = L1_1
L7_7 = L3_3 + 1
L19_19 = L5_5(L6_6, L7_7)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L5_5(L6_6, L7_7))
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L4_4
L6_6 = "_"
L7_7 = L2_2
L5_5 = L5_5 .. L6_6 .. L7_7
L6_6 = "NRI-DNS-EXF-A"
L7_7 = string
L7_7 = L7_7.format
L8_8 = "%s_%s_%s"
L9_9 = L6_6
L10_10 = L4_4
L11_11 = L2_2
L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
L8_8 = MpCommon
L8_8 = L8_8.GetPersistContextCountNoPath
L9_9 = L7_7
L8_8 = L8_8(L9_9)
if L8_8 and L8_8 > 0 then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = mp
L9_9 = L9_9.CheckUrl
L10_10 = L4_4
L10_10 = L9_9(L10_10)
if L9_9 == 1 and L10_10 == 1 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = string
L11_11 = L11_11.sub
L12_12 = L1_1
L13_13 = 1
L14_14 = L3_3 - 1
L11_11 = L11_11(L12_12, L13_13, L14_14)
L12_12 = versioning
L12_12 = L12_12.GetTestMode
L12_12 = L12_12()
if L12_12 ~= 6500 then
  L12_12 = computeStringScores
  L13_13 = L11_11
  L15_15 = L12_12(L13_13)
  if (not (L13_13 > 0) or not (L12_12 > 1)) and not (L15_15 > 3) and not (L14_14 > 5) then
    L16_16 = mp
    L16_16 = L16_16.CLEAN
    return L16_16
  end
end
L12_12 = MpCommon
L12_12 = L12_12.GetPersistContextCountNoPath
L13_13 = L5_5
L12_12 = L12_12(L13_13)
if L12_12 < 20 then
  L13_13 = MpCommon
  L13_13 = L13_13.QueryPersistContextNoPath
  L14_14 = L5_5
  L15_15 = L11_11
  L13_13 = L13_13(L14_14, L15_15)
  if not L13_13 then
    L14_14 = computeReponseLength
    L15_15 = L0_0
    L14_14 = L14_14(L15_15)
    L15_15 = MpCommon
    L15_15 = L15_15.AppendPersistContextNoPath
    L16_16 = L5_5
    L17_17 = L11_11
    L18_18 = 3600
    L15_15(L16_16, L17_17, L18_18)
    L15_15 = MpCommon
    L15_15 = L15_15.AppendPersistContextNoPath
    L16_16 = L5_5
    L17_17 = "T"
    L16_16 = L16_16 .. L17_17
    L17_17 = MpCommon
    L17_17 = L17_17.GetCurrentTimeT
    L17_17 = L17_17()
    L18_18 = "_"
    L19_19 = #L11_11
    L17_17 = L17_17 .. L18_18 .. L19_19 .. "_" .. L14_14
    L18_18 = 3600
    L15_15(L16_16, L17_17, L18_18)
    L12_12 = L12_12 + 1
  end
end
if L12_12 >= 20 then
  L13_13 = MpCommon
  L13_13 = L13_13.GetPersistContextNoPath
  L14_14 = L5_5
  L13_13 = L13_13(L14_14)
  L14_14 = extractCommonSuffix
  L15_15 = L13_13
  L16_16 = 0
  L15_15 = L14_14(L15_15, L16_16)
  L16_16 = computeDataLength
  L17_17 = L13_13
  L18_18 = #L15_15
  L16_16 = L16_16(L17_17, L18_18)
  L17_17 = #L15_15
  L17_17 = L17_17 + L16_16
  if L17_17 < 40 or L16_16 < 20 then
    L18_18 = mp
    L18_18 = L18_18.changedetectionname
    L19_19 = 805306720
    L18_18(L19_19)
  else
    L18_18 = this_sigattrlog
    L18_18 = L18_18[2]
    L18_18 = L18_18.utf8p1
    L19_19 = routeBasedOnProcess
    L19_19 = L19_19(L18_18, 0)
    mp.changedetectionname(L19_19)
  end
  L18_18 = MpCommon
  L18_18 = L18_18.QueryPersistContextNoPath
  L19_19 = L6_6
  L18_18 = L18_18(L19_19, L5_5)
  if not L18_18 then
    L18_18 = MpCommon
    L18_18 = L18_18.AppendPersistContextNoPath
    L19_19 = L6_6
    L18_18(L19_19, L5_5, 60)
  end
  L18_18 = mp
  L18_18 = L18_18.INFECTED
  return L18_18
end
L13_13 = mp
L13_13 = L13_13.CLEAN
return L13_13
