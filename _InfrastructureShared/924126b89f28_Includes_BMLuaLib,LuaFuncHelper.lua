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
    L1_1 = 10000
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
L0_0 = L0_0[5]
L0_0 = L0_0.utf8p1
L1_1 = 16
L3_3 = L0_0
L2_2 = L0_0.match
L4_4 = "[%w%-%.]*%.[%w%-]+%.[%w]+"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = lastIndexOf
L3_3 = L0_0
L4_4 = "."
L5_5 = #L0_0
L5_5 = L5_5 - 7
L2_2 = L2_2(L3_3, L4_4, L5_5)
L3_3 = string
L3_3 = L3_3.lower
L4_4 = string
L4_4 = L4_4.sub
L5_5 = L0_0
L6_6 = L2_2 + 1
L19_19 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L4_4(L5_5, L6_6))
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "NRI-DNS-TL-TXT"
L5_5 = string
L5_5 = L5_5.format
L6_6 = "%s_%s_%s"
L7_7 = L4_4
L8_8 = L3_3
L9_9 = L1_1
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
L6_6 = L3_3
L7_7 = "_"
L8_8 = L1_1
L6_6 = L6_6 .. L7_7 .. L8_8
L7_7 = MpCommon
L7_7 = L7_7.GetPersistContextCountNoPath
L8_8 = L5_5
L7_7 = L7_7(L8_8)
if L7_7 and L7_7 > 0 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = mp
L8_8 = L8_8.CheckUrl
L9_9 = L3_3
L9_9 = L8_8(L9_9)
L10_10 = this_sigattrlog
L10_10 = L10_10[3]
L10_10 = L10_10.np1
if not L10_10 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = mp
L11_11 = L11_11.bitand
L12_12 = L10_10
L13_13 = 65535
L11_11 = L11_11(L12_12, L13_13)
L10_10 = L11_11
if L8_8 == 1 and L9_9 == 1 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = string
L11_11 = L11_11.sub
L12_12 = L0_0
L13_13 = 1
L14_14 = L2_2 - 1
L11_11 = L11_11(L12_12, L13_13, L14_14)
L12_12 = versioning
L12_12 = L12_12.GetTestMode
L12_12 = L12_12()
if L12_12 ~= 65000 then
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
L13_13 = L6_6
L12_12 = L12_12(L13_13)
if L12_12 < 5 then
  L13_13 = MpCommon
  L13_13 = L13_13.QueryPersistContextNoPath
  L14_14 = L6_6
  L15_15 = L11_11
  L13_13 = L13_13(L14_14, L15_15)
  if not L13_13 then
    L14_14 = computeReponseLength
    L15_15 = L10_10
    L14_14 = L14_14(L15_15)
    L15_15 = MpCommon
    L15_15 = L15_15.AppendPersistContextNoPath
    L16_16 = L6_6
    L17_17 = L11_11
    L18_18 = 3600
    L15_15(L16_16, L17_17, L18_18)
    L15_15 = MpCommon
    L15_15 = L15_15.AppendPersistContextNoPath
    L16_16 = L6_6
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
if L12_12 >= 5 then
  L13_13 = MpCommon
  L13_13 = L13_13.GetPersistContextNoPath
  L14_14 = L6_6
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
  if L17_17 < 15 or L16_16 < 10 then
    L18_18 = mp
    L18_18 = L18_18.changedetectionname
    L19_19 = 805306728
    L18_18(L19_19)
  else
    L18_18 = this_sigattrlog
    L18_18 = L18_18[2]
    L18_18 = L18_18.utf8p1
    L19_19 = nil
    if L17_17 > 500 then
      L19_19 = routeBasedOnProcess(L18_18, 4)
    else
      L19_19 = routeBasedOnProcess(L18_18, 2)
    end
    mp.changedetectionname(L19_19)
  end
  L18_18 = isTrustedDomain
  L19_19 = L3_3
  L18_18 = L18_18(L19_19, "DNS-sinkhole")
  if L18_18 then
    L18_18 = MpCommon
    L18_18 = L18_18.AppendPersistContextNoPath
    L19_19 = L5_5
    L18_18(L19_19, "1", 3600)
    L18_18 = mp
    L18_18 = L18_18.CLEAN
    return L18_18
  end
  L18_18 = MpCommon
  L18_18 = L18_18.QueryPersistContextNoPath
  L19_19 = L4_4
  L18_18 = L18_18(L19_19, L6_6)
  if not L18_18 then
    L18_18 = MpCommon
    L18_18 = L18_18.AppendPersistContextNoPath
    L19_19 = L4_4
    L18_18(L19_19, L6_6, 60)
  end
  L18_18 = mp
  L18_18 = L18_18.INFECTED
  return L18_18
end
L13_13 = mp
L13_13 = L13_13.CLEAN
return L13_13
