local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50, L51_51, L52_52, L53_53, L54_54, L55_55, L56_56, L57_57, L58_58, L59_59, L60_60, L61_61, L62_62, L63_63, L64_64, L65_65
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = peattributes
L1_1 = L1_1.no_security
if L1_1 == true then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
function L1_1()
  local L0_66, L2_67, L3_68
  for _FORV_3_ = 1, L2_67.NumberOfSections do
    if tostring(pesecs[_FORV_3_].Name) == ".rsrc" then
      return pesecs[_FORV_3_].PointerToRawData, pesecs[_FORV_3_].VirtualAddress
    end
  end
end
function L2_2(A0_69)
  local L1_70, L2_71, L3_72, L4_73
  L1_70 = mp
  L1_70 = L1_70.readfile
  L2_71 = A0_69
  L3_72 = 20
  L1_70 = L1_70(L2_71, L3_72)
  L2_71 = mp
  L2_71 = L2_71.readu_u16
  L3_72 = L1_70
  L4_73 = 15
  L2_71 = L2_71(L3_72, L4_73)
  L3_72 = mp
  L3_72 = L3_72.readu_u16
  L4_73 = L1_70
  L3_72 = L3_72(L4_73, 13)
  L4_73 = A0_69 + 16
  return L2_71, L3_72, L4_73
end
function L3_3(A0_74)
  local L1_75, L2_76, L3_77, L4_78, L5_79, L6_80, L7_81, L8_82
  L1_75 = mp
  L1_75 = L1_75.readfile
  L2_76 = A0_74
  L3_77 = 8
  L1_75 = L1_75(L2_76, L3_77)
  L2_76 = mp
  L2_76 = L2_76.readu_u32
  L3_77 = L1_75
  L4_78 = 1
  L2_76 = L2_76(L3_77, L4_78)
  L3_77 = mp
  L3_77 = L3_77.readu_u32
  L4_78 = L1_75
  L5_79 = 5
  L3_77 = L3_77(L4_78, L5_79)
  L4_78 = mp
  L4_78 = L4_78.bitand
  L5_79 = L2_76
  L6_80 = 2147483647
  L4_78 = L4_78(L5_79, L6_80)
  L5_79 = mp
  L5_79 = L5_79.bitand
  L6_80 = L2_76
  L7_81 = 4294901760
  L5_79 = L5_79(L6_80, L7_81)
  L6_80 = mp
  L6_80 = L6_80.bitand
  L7_81 = L2_76
  L8_82 = 65535
  L6_80 = L6_80(L7_81, L8_82)
  L7_81 = mp
  L7_81 = L7_81.shr32
  L8_82 = mp
  L8_82 = L8_82.bitand
  L8_82 = L8_82(L3_77, 2147483648)
  L7_81 = L7_81(L8_82, 31)
  L8_82 = mp
  L8_82 = L8_82.bitand
  L8_82 = L8_82(L3_77, 2147483647)
  return L2_76, L3_77, L4_78, L5_79, L6_80, L7_81, L8_82
end
function L4_4(A0_83)
  local L1_84, L2_85, L3_86, L4_87, L5_88
  L1_84 = mp
  L1_84 = L1_84.readfile
  L2_85 = A0_83
  L3_86 = 20
  L1_84 = L1_84(L2_85, L3_86)
  L2_85 = mp
  L2_85 = L2_85.readu_u32
  L3_86 = L1_84
  L4_87 = 1
  L2_85 = L2_85(L3_86, L4_87)
  L3_86 = mp
  L3_86 = L3_86.readu_u32
  L4_87 = L1_84
  L5_88 = 5
  L3_86 = L3_86(L4_87, L5_88)
  L4_87 = mp
  L4_87 = L4_87.readu_u32
  L5_88 = L1_84
  L4_87 = L4_87(L5_88, 9)
  L5_88 = mp
  L5_88 = L5_88.readu_u32
  L5_88 = L5_88(L1_84, 13)
  return L2_85, L3_86, L4_87, L5_88
end
L5_5 = {}
L5_5.E17764C39F2AFD7114F8528D2F9783D9A591F6679715EECE730A262CF5CFD3B3 = "62009aaabdae749fd47d19150958329bf6ff4b34"
L5_5["84D8717A416C8C9E214C6E0DBD091860D8133F413BCFF35673998F27BBA084CA"] = "b9eaa034c821c159b05d3521bcf7feb796ebd6ff"
L5_5.A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1 = "007790f6561dad89b0bcd85585762495e358f8a5"
L5_5["4843A82ED3B1F2BFBEE9671960E1940C942F688D"] = "495847a93187cfb8c71f840cb7b41497ad95c64f"
L5_5["47F4B9898631773231B32844EC0D49990AC4EB1E"] = "409AA4A74A0CDA7C0FEE6BD0BB8823D16B5F1875"
L6_6 = mp
L6_6 = L6_6.readprotection
L7_7 = false
L6_6(L7_7)
L6_6 = L1_1
L7_7 = L6_6()
L8_8 = L2_2
L9_9 = L6_6
L10_10 = L8_8(L9_9)
if L9_9 == 0 then
  return L11_11
end
for L14_14 = 0, L9_9 do
  L15_15 = L14_14 * 8
  L15_15 = L10_10 + L15_15
  L16_16 = L3_3
  L17_17 = L15_15
  L22_22 = L16_16(L17_17)
  L23_23 = mp
  L23_23 = L23_23.readfile
  L24_24 = L6_6 + L18_18
  L25_25 = 40
  L23_23 = L23_23(L24_24, L25_25)
  L24_24 = string
  L24_24 = L24_24.gsub
  L25_25 = L23_23
  L26_26 = "%z"
  L27_27 = ""
  L24_24 = L24_24(L25_25, L26_26, L27_27)
  L23_23 = L24_24
  L24_24 = string
  L24_24 = L24_24.find
  L25_25 = L23_23
  L26_26 = "MSELAMCERTINFOID"
  L27_27 = 1
  L24_24 = L24_24(L25_25, L26_26, L27_27, L28_28)
  if L24_24 then
    L24_24 = mp
    L24_24 = L24_24.set_mpattribute
    L25_25 = "Lua:ELAMDriver"
    L24_24(L25_25)
    L24_24 = L6_6 + L22_22
    L25_25 = L2_2
    L26_26 = L24_24
    L27_27 = L25_25(L26_26)
    if L26_26 == 0 then
      return L28_28
    end
    for L31_31 = 0, L26_26 do
      L32_32 = L31_31 * 8
      L32_32 = L27_27 + L32_32
      L33_33 = L3_3
      L34_34 = L32_32
      L39_39 = L33_33(L34_34)
      L40_40 = mp
      L40_40 = L40_40.readfile
      L41_41 = L6_6 + L35_35
      L42_42 = 70
      L40_40 = L40_40(L41_41, L42_42)
      L41_41 = string
      L41_41 = L41_41.gsub
      L42_42 = L40_40
      L43_43 = "%z"
      L44_44 = ""
      L41_41 = L41_41(L42_42, L43_43, L44_44)
      L40_40 = L41_41
      L41_41 = string
      L41_41 = L41_41.find
      L42_42 = L40_40
      L43_43 = "MICROSOFTELAMCERTIFICATEINFO"
      L44_44 = 1
      L41_41 = L41_41(L42_42, L43_43, L44_44, L45_45)
      if L41_41 then
        L41_41 = L6_6 + L39_39
        L42_42 = L2_2
        L43_43 = L41_41
        L44_44 = L42_42(L43_43)
        for L48_48 = 0, L42_42 do
          L49_49 = L48_48 * 8
          L49_49 = L44_44 + L49_49
          L50_50 = L3_3
          L51_51 = L49_49
          L56_56 = L50_50(L51_51)
          L57_57 = L6_6 + L56_56
          L58_58 = L4_4
          L59_59 = L57_57
          L59_59 = L58_58(L59_59)
          if L59_59 <= 4000 and L7_7 < L58_58 then
            L60_60 = L58_58 - L7_7
            L60_60 = L60_60 + L6_6
            L61_61 = mp
            L61_61 = L61_61.readfile
            L61_61 = L61_61(L62_62, L63_63)
            L65_65 = ""
            L61_61 = L62_62
            for L65_65 in L62_62(L63_63) do
              if L61_61:match(L65_65) ~= nil then
                mp.set_mpattribute("MpInternal_researchdata=TBSHash=" .. L65_65)
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
end
return L11_11
