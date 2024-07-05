local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50, L51_51, L52_52, L53_53, L54_54, L55_55
function L0_0()
  local L0_56, L2_57, L3_58
  for _FORV_3_ = 1, L2_57.NumberOfSections do
    if tostring(pesecs[_FORV_3_].Name) == ".rsrc" then
      return pesecs[_FORV_3_].PointerToRawData, pesecs[_FORV_3_].VirtualAddress
    end
  end
end
function L1_1(A0_59)
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
function L2_2(A0_63)
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
function L3_3(A0_72)
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
L4_4 = mp
L4_4 = L4_4.readprotection
L5_5 = false
L4_4(L5_5)
L4_4 = L0_0
L5_5 = L4_4()
L6_6 = L1_1
L7_7 = L4_4
L7_7 = L6_6(L7_7)
for L11_11 = 0, L6_6 do
  L12_12 = L11_11 * 8
  L12_12 = L7_7 + L12_12
  L13_13 = L2_2
  L14_14 = L12_12
  L19_19 = L13_13(L14_14)
  if L17_17 == 23 then
    L20_20 = L4_4 + L19_19
    L21_21 = L1_1
    L22_22 = L20_20
    L22_22 = L21_21(L22_22)
    for L26_26 = 0, L21_21 do
      L27_27 = L26_26 * 8
      L27_27 = L22_22 + L27_27
      L28_28 = L2_2
      L29_29 = L27_27
      L34_34 = L28_28(L29_29)
      L35_35 = L4_4 + L34_34
      L36_36 = L1_1
      L37_37 = L35_35
      L37_37 = L36_36(L37_37)
      for L41_41 = 0, L36_36 do
        L42_42 = L41_41 * 8
        L42_42 = L37_37 + L42_42
        L43_43 = L2_2
        L44_44 = L42_42
        L49_49 = L43_43(L44_44)
        L50_50 = L4_4 + L49_49
        L51_51 = L3_3
        L52_52 = L50_50
        L52_52 = L51_51(L52_52)
        if L52_52 <= 20000 and L5_5 < L51_51 then
          L53_53 = L51_51 - L5_5
          L53_53 = L53_53 + L4_4
          L54_54 = mp
          L54_54 = L54_54.readfile
          L55_55 = L53_53
          L54_54 = L54_54(L55_55, L52_52)
          L55_55 = mp
          L55_55 = L55_55.readu_u32
          L55_55 = L55_55(L54_54, 1)
          if L55_55 == 4290969856 then
            L55_55 = mp
            L55_55 = L55_55.set_mpattribute
            L55_55("//Lua:HTA2EXE_EmbeddedHTA")
            L55_55 = string
            L55_55 = L55_55.gsub
            L55_55 = L55_55(L54_54, "(..)", function(A0_78)
              return string.char(mp.bitxor(string.byte(A0_78), 255))
            end)
            mp.vfo_add_buffer(L55_55, "EmbeddedHTA", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
            return mp.CLEAN
          end
        end
      end
    end
  end
end
return L8_8
