local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50, L51_51, L52_52, L53_53, L54_54, L55_55
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.OriginalFilename
  L1_1 = L1_1(L2_2)
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L0_0.InternalName
  L2_2 = L2_2(L3_3)
  if L1_1 ~= nil and L1_1 ~= "" then
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L4_4 = "MpInternal_researchdata=OFN="
    L5_5 = L1_1
    L4_4 = L4_4 .. L5_5
    L3_3(L4_4)
    L3_3 = MpCommon
    L3_3 = L3_3.StringRegExpSearch
    L4_4 = "(procexp|handle|tcpview|winobj|logonsessions|tcpvcon)"
    L5_5 = L1_1
    L4_4 = L3_3(L4_4, L5_5)
    if L3_3 == true then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
  elseif L2_2 ~= nil and L2_2 ~= "" then
    L3_3 = mp
    L3_3 = L3_3.set_mpattribute
    L4_4 = "MpInternal_researchdata=InternalName="
    L5_5 = L2_2
    L4_4 = L4_4 .. L5_5
    L3_3(L4_4)
    L3_3 = MpCommon
    L3_3 = L3_3.StringRegExpSearch
    L4_4 = "(procexp|handle|tcpview|winobj|logonsessions|tcpvcon)"
    L5_5 = L2_2
    L4_4 = L3_3(L4_4, L5_5)
    if L3_3 == true then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
  end
end
L1_1 = ""
L2_2 = mp
L2_2 = L2_2.get_mpattribute
L3_3 = "HSTR:ProcessHacker"
L2_2 = L2_2(L3_3)
if L2_2 then
  L1_1 = "ProcessHacker"
else
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "HSTR:ProcessExplorer"
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L1_1 = "ProcessExplorer"
  end
end
function L2_2()
  local L0_56, L2_57, L3_58
  for _FORV_3_ = 1, L2_57.NumberOfSections do
    if tostring(pesecs[_FORV_3_].Name) == ".rsrc" then
      return pesecs[_FORV_3_].PointerToRawData, pesecs[_FORV_3_].VirtualAddress
    end
  end
end
function L3_3(A0_59)
  local L1_60, L2_61, L3_62
  L1_60 = mp
  L1_60 = L1_60.readfile
  L2_61 = A0_59
  L3_62 = 20
  L1_60 = L1_60(L2_61, L3_62)
  L2_61 = mp
  L2_61 = L2_61.readu_u16
  L3_62 = L1_60
  L2_61 = L2_61(L3_62, 15)
  L3_62 = A0_59 + 16
  return L2_61, L3_62
end
function L4_4(A0_63)
  local L1_64, L2_65, L3_66, L4_67, L5_68, L6_69, L7_70, L8_71
  L1_64 = mp
  L1_64 = L1_64.readfile
  L2_65 = A0_63
  L3_66 = 8
  L1_64 = L1_64(L2_65, L3_66)
  L2_65 = mp
  L2_65 = L2_65.readu_u32
  L3_66 = L1_64
  L4_67 = 1
  L2_65 = L2_65(L3_66, L4_67)
  L3_66 = mp
  L3_66 = L3_66.readu_u32
  L4_67 = L1_64
  L5_68 = 5
  L3_66 = L3_66(L4_67, L5_68)
  L4_67 = mp
  L4_67 = L4_67.bitand
  L5_68 = L2_65
  L6_69 = 2147483647
  L4_67 = L4_67(L5_68, L6_69)
  L5_68 = mp
  L5_68 = L5_68.bitand
  L6_69 = L2_65
  L7_70 = 4294901760
  L5_68 = L5_68(L6_69, L7_70)
  L6_69 = mp
  L6_69 = L6_69.bitand
  L7_70 = L2_65
  L8_71 = 65535
  L6_69 = L6_69(L7_70, L8_71)
  L7_70 = mp
  L7_70 = L7_70.shr32
  L8_71 = mp
  L8_71 = L8_71.bitand
  L8_71 = L8_71(L3_66, 2147483648)
  L7_70 = L7_70(L8_71, 31)
  L8_71 = mp
  L8_71 = L8_71.bitand
  L8_71 = L8_71(L3_66, 2147483647)
  return L2_65, L3_66, L4_67, L5_68, L6_69, L7_70, L8_71
end
function L5_5(A0_72)
  local L1_73, L2_74, L3_75, L4_76, L5_77
  L1_73 = mp
  L1_73 = L1_73.readfile
  L2_74 = A0_72
  L3_75 = 20
  L1_73 = L1_73(L2_74, L3_75)
  L2_74 = mp
  L2_74 = L2_74.readu_u32
  L3_75 = L1_73
  L4_76 = 1
  L2_74 = L2_74(L3_75, L4_76)
  L3_75 = mp
  L3_75 = L3_75.readu_u32
  L4_76 = L1_73
  L5_77 = 5
  L3_75 = L3_75(L4_76, L5_77)
  L4_76 = mp
  L4_76 = L4_76.readu_u32
  L5_77 = L1_73
  L4_76 = L4_76(L5_77, 9)
  L5_77 = mp
  L5_77 = L5_77.readu_u32
  L5_77 = L5_77(L1_73, 13)
  return L2_74, L3_75, L4_76, L5_77
end
L6_6 = mp
L6_6 = L6_6.readprotection
L7_7 = false
L6_6(L7_7)
L6_6 = L2_2
L7_7 = L6_6()
L8_8 = L3_3
L9_9 = L6_6
L9_9 = L8_8(L9_9)
for L13_13 = 0, L8_8 do
  L14_14 = L13_13 * 8
  L14_14 = L9_9 + L14_14
  L15_15 = L4_4
  L16_16 = L14_14
  L21_21 = L15_15(L16_16)
  L22_22 = L6_6 + L21_21
  L23_23 = L3_3
  L24_24 = L22_22
  L24_24 = L23_23(L24_24)
  for L28_28 = 0, L23_23 do
    L29_29 = L28_28 * 8
    L29_29 = L24_24 + L29_29
    L30_30 = L4_4
    L31_31 = L29_29
    L36_36 = L30_30(L31_31)
    L37_37 = L6_6 + L36_36
    L38_38 = L3_3
    L39_39 = L37_37
    L39_39 = L38_38(L39_39)
    for L43_43 = 0, L38_38 do
      L44_44 = L43_43 * 8
      L44_44 = L39_39 + L44_44
      L45_45 = L4_4
      L46_46 = L44_44
      L51_51 = L45_45(L46_46)
      L52_52 = L6_6 + L51_51
      L53_53 = L5_5
      L54_54 = L52_52
      L54_54 = L53_53(L54_54)
      if L7_7 < L53_53 then
        L55_55 = L53_53 - L7_7
        L55_55 = L55_55 + L6_6
        if mp.readfile(L55_55, 2) == "MZ" then
          mp.set_mpattribute("MpInternal_researchdata=Driver=" .. L1_1)
          return mp.INFECTED
        end
      end
    end
  end
end
return L10_10
