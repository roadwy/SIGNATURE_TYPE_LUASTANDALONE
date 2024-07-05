local L0_0, L1_1
function L0_0()
  local L0_2
  L0_2 = sysio
  L0_2 = L0_2.RegOpenKey
  L0_2 = L0_2("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
  if L0_2 and sysio.GetRegValueAsDword(L0_2, "TamperProtection") then
    return (sysio.GetRegValueAsDword(L0_2, "TamperProtection"))
  end
  return nil
end
getTamperProtectionState = L0_0
function L0_0()
  local L0_3
  L0_3 = getTamperProtectionState
  L0_3 = L0_3()
  if L0_3 then
    if mp.bitand(L0_3, 1) == 1 then
      return true, L0_3
    else
      return false, L0_3
    end
  end
  return nil
end
isTamperProtectionOn = L0_0
function L0_0()
  local L0_4, L1_5, L2_6
  L0_4 = mp
  L0_4 = L0_4.get_mpattributevalue
  L1_5 = "RPF:MpCertVA"
  L0_4 = L0_4(L1_5)
  if L0_4 == nil then
    L1_5 = false
    return L1_5
  end
  L1_5 = mp
  L1_5 = L1_5.get_mpattributevalue
  L2_6 = "RPF:MpCertSz"
  L1_5 = L1_5(L2_6)
  L2_6 = mp
  L2_6 = L2_6.hstr_full_log
  L2_6 = L2_6()
  for _FORV_6_, _FORV_7_ in pairs(L2_6) do
    if _FORV_7_.matched and _FORV_7_.VA and L0_4 < _FORV_7_.VA and _FORV_7_.VA < L0_4 + L1_5 then
      return true
    end
  end
  return false
end
checkIfCertificateHit = L0_0
function L0_0(A0_7, A1_8, A2_9)
  if not A1_8 or not A2_9 then
    return false
  end
  if A1_8 <= 0 or A2_9 <= 0 then
    return false
  end
  if not mp.SMSVirtualQuery(A1_8) then
    return false
  end
  if not A0_7[mp.SMSVirtualQuery(A1_8).found_ix] then
    return false
  end
  if mp.bitand(A0_7[mp.SMSVirtualQuery(A1_8).found_ix].prot, 255) ~= 32 and mp.bitand(A0_7[mp.SMSVirtualQuery(A1_8).found_ix].prot, 255) ~= 64 and mp.bitand(A0_7[mp.SMSVirtualQuery(A1_8).found_ix].prot, 255) ~= 128 and mp.bitand(A0_7[mp.SMSVirtualQuery(A1_8).found_ix].prot, 255) ~= 8 and mp.bitand(A0_7[mp.SMSVirtualQuery(A1_8).found_ix].prot, 255) ~= 4 and mp.bitand(A0_7[mp.SMSVirtualQuery(A1_8).found_ix].prot, 255) ~= 2 then
    return false
  end
  return A1_8 + A2_9 > A0_7[mp.SMSVirtualQuery(A1_8).found_ix].addr and A1_8 + A2_9 <= A0_7[mp.SMSVirtualQuery(A1_8).found_ix].addr + A0_7[mp.SMSVirtualQuery(A1_8).found_ix].size
end
isSafeToRead = L0_0
function L0_0()
  local L0_10, L1_11, L2_12, L3_13, L4_14, L5_15, L6_16, L7_17, L8_18, L9_19, L10_20, L11_21, L12_22, L13_23, L14_24, L15_25, L16_26, L17_27, L18_28, L19_29, L20_30
  L0_10 = mp
  L0_10 = L0_10.GetHSTRCallerId
  L0_10 = L0_10()
  L1_11 = mp
  L1_11 = L1_11.HSTR_CALLER_SMS
  if L0_10 ~= L1_11 then
    L0_10 = mp
    L0_10 = L0_10.INFECTED
    return L0_10
  end
  function L0_10(A0_31)
    local L1_32, L2_33, L3_34, L4_35
    L1_32 = mp
    L1_32 = L1_32.bitand
    L2_33 = A0_31
    L3_34 = 4294967295
    L1_32 = L1_32(L2_33, L3_34)
    A0_31 = L1_32
    L1_32 = mp
    L1_32 = L1_32.bsplit
    L2_33 = A0_31
    L3_34 = 8
    L4_35 = L1_32(L2_33, L3_34)
    return string.char(L1_32) .. string.char(L2_33) .. string.char(L3_34) .. string.char(L4_35)
  end
  function L1_11(A0_36, A1_37)
    local L2_38, L3_39, L4_40, L5_41, L6_42
    L2_38 = ""
    for L6_42 = A1_37, #A0_36 do
      if string.byte(A0_36, L6_42) < 32 or string.byte(A0_36, L6_42) > 126 then
        break
      end
      L2_38 = L2_38 .. string.char(string.byte(A0_36, L6_42))
    end
    return L2_38
  end
  L2_12 = mp
  L2_12 = L2_12.hstr_full_log
  L2_12 = L2_12()
  L3_13 = ""
  for L7_17, L8_18 in L4_14(L5_15) do
    L9_19 = L8_18.matched
    if L9_19 then
      L9_19 = mp
      L9_19 = L9_19.ReadProcMem
      L10_20 = L8_18.VA
      L11_21 = 80
      L9_19 = L9_19(L10_20, L11_21)
      if not L9_19 then
        L10_20 = mp
        L10_20 = L10_20.INFECTED
        return L10_20
      end
      L10_20 = mp
      L10_20 = L10_20.readu_u16
      L11_21 = L9_19
      L12_22 = 1
      L10_20 = L10_20(L11_21, L12_22)
      if L10_20 == 50307 then
        L10_20 = "\\x83\\xC4\\x04\\x84\\xC0\\x74.\\xE8....\\xE8....\\xE8....\\xE8....[\\x00-\\x67\\x69-\\xFF]+\\x68(....)\\x68(....)"
        L11_21 = MpCommon
        L11_21 = L11_21.BinaryRegExpSearch
        L12_22 = L10_20
        L13_23 = L9_19
        L13_23 = L11_21(L12_22, L13_23)
        if L11_21 then
          L14_24 = mp
          L14_24 = L14_24.readu_u32
          L15_25 = L12_22
          L16_26 = 1
          L14_24 = L14_24(L15_25, L16_26)
          L12_22 = L14_24
          L14_24 = mp
          L14_24 = L14_24.readu_u32
          L15_25 = L13_23
          L16_26 = 1
          L14_24 = L14_24(L15_25, L16_26)
          L13_23 = L14_24
          L14_24 = mp
          L14_24 = L14_24.bsplit
          L15_25 = L12_22
          L16_26 = 16
          L15_25 = L14_24(L15_25, L16_26)
          L16_26 = mp
          L16_26 = L16_26.bsplit
          L17_27 = L13_23
          L18_28 = 16
          L17_27 = L16_26(L17_27, L18_28)
          if L15_25 ~= L17_27 then
            L18_28 = mp
            L18_28 = L18_28.INFECTED
            return L18_28
          end
          L18_28 = mp
          L18_28 = L18_28.ReadProcMem
          L19_29 = L12_22
          L20_30 = 48
          L18_28 = L18_28(L19_29, L20_30)
          if not L18_28 then
            L19_29 = mp
            L19_29 = L19_29.INFECTED
            return L19_29
          end
          L19_29 = L1_11
          L20_30 = L18_28
          L19_29 = L19_29(L20_30, 1)
          L20_30 = #L19_29
          if L20_30 ~= 0 then
            L20_30 = #L19_29
          elseif L20_30 == 48 then
            L20_30 = mp
            L20_30 = L20_30.INFECTED
            return L20_30
          end
          L20_30 = mp
          L20_30 = L20_30.ReadProcMem
          L20_30 = L20_30(L13_23, 880)
          if not L20_30 then
            return mp.INFECTED
          end
          L3_13 = "ZLOA" .. L0_10(#L19_29) .. L19_29 .. L0_10(#L20_30) .. L20_30
          L3_13 = MpCommon.Base64Encode(L3_13)
        end
        break
      end
    end
  end
  if L3_13 ~= "" then
    L7_17 = L3_13
    L8_18 = 0
    L9_19 = 60
    L10_20 = 32
    L11_21 = 1
    L5_15(L6_16, L7_17, L8_18, L9_19, L10_20, L11_21)
  end
  return L4_14
end
maceExtract_ZLoader = L0_0
function L0_0(A0_43)
  local L1_44, L2_45, L3_46, L4_47, L5_48, L6_49, L7_50, L8_51, L9_52, L10_53, L11_54, L12_55, L13_56, L14_57, L15_58, L16_59, L17_60, L18_61, L19_62, L20_63, L21_64, L22_65, L23_66, L24_67, L25_68, L26_69, L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76
  L1_44 = mp
  L1_44 = L1_44.GetHSTRCallerId
  L1_44 = L1_44()
  L2_45 = mp
  L2_45 = L2_45.HSTR_CALLER_SMS
  if L1_44 ~= L2_45 then
    return
  end
  L1_44 = mp
  L1_44 = L1_44.GetSMSProcArchitecture
  L1_44 = L1_44()
  L2_45 = mp
  L2_45 = L2_45.SMS_PROC_ARCH_X64
  L1_44 = L1_44 == L2_45
  L2_45 = mp
  L2_45 = L2_45.GetScannedPPID
  L2_45 = L2_45()
  L3_46 = mp
  L3_46 = L3_46.GetSMSMemRanges
  L3_46 = L3_46()
  function L4_47(A0_77, A1_78)
    if not A0_77 or not A1_78 then
      return false
    end
    if A0_77 <= 0 or A1_78 <= 0 then
      return false
    end
    if not mp.SMSVirtualQuery(A0_77) then
      return false
    end
    if not _UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix] then
      return false
    end
    if mp.bitand(_UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].prot, 255) ~= 32 and mp.bitand(_UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].prot, 255) ~= 64 and mp.bitand(_UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].prot, 255) ~= 128 and mp.bitand(_UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].prot, 255) ~= 8 and mp.bitand(_UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].prot, 255) ~= 4 then
      return false
    end
    return A0_77 + A1_78 > _UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].addr and A0_77 + A1_78 <= _UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].addr + _UPVALUE0_[mp.SMSVirtualQuery(A0_77).found_ix].size
  end
  function L5_48(A0_79, A1_80)
    if not _UPVALUE0_(A0_79, A1_80) then
      return nil
    end
    return mp.ReadProcMem(A0_79, A1_80)
  end
  function L6_49(A0_81)
    local L1_82, L2_83, L3_84, L4_85, L5_86, L6_87, L7_88
    L1_82 = ""
    L2_83 = 6
    L3_84 = 0
    if A0_81 then
      L4_85 = #A0_81
    elseif L4_85 == 0 then
      L4_85 = -1
      return L4_85
    end
    L4_85 = string
    L4_85 = L4_85.byte
    L5_86 = A0_81
    L6_87 = 1
    L4_85 = L4_85(L5_86, L6_87)
    if L4_85 == 0 then
      L1_82 = "([\\x00-\\xFF]+)\\x00\\x25\\x00\\x02\\x00\\x04"
    else
      L4_85 = string
      L4_85 = L4_85.byte
      L5_86 = A0_81
      L6_87 = 1
      L4_85 = L4_85(L5_86, L6_87)
      if L4_85 == 46 then
        L1_82 = "([\\x00-\\xFF]+)\\x2e\\x0b\\x2e\\x2c\\x2e\\x2a"
        L3_84 = 46
      else
        L4_85 = string
        L4_85 = L4_85.byte
        L5_86 = A0_81
        L6_87 = 1
        L4_85 = L4_85(L5_86, L6_87)
        if L4_85 == 105 then
          L1_82 = "([\\x00-\\xFF]+)\\x69\\x4c\\x69\\x6b\\x69\\x6d"
          L3_84 = 105
        else
          L4_85 = string
          L4_85 = L4_85.byte
          L5_86 = A0_81
          L6_87 = 1
          L4_85 = L4_85(L5_86, L6_87)
          if L4_85 == 78 then
            L1_82 = "([\\x00-\\xFF]+)\\x4e\\x6b\\x4e\\x4c\\x4e\\x4a"
            L3_84 = 78
          else
            L4_85 = -1
            return L4_85
          end
        end
      end
    end
    if L1_82 == "" then
      L4_85 = -1
      return L4_85
    end
    L4_85 = MpCommon
    L4_85 = L4_85.BinaryRegExpSearch
    L5_86 = L1_82
    L6_87 = A0_81
    L5_86 = L4_85(L5_86, L6_87)
    if not L4_85 then
      L6_87 = -1
      return L6_87
    end
    L6_87 = #L5_86
    L6_87 = L6_87 + L2_83
    L6_87 = L6_87 + 1
    L7_88 = L6_87 + 4
    if L7_88 > #A0_81 then
      L7_88 = -1
      return L7_88
    end
    L7_88 = string
    L7_88 = L7_88.char
    L7_88 = L7_88(mp.bitxor(string.byte(A0_81, L6_87 + 3), L3_84))
    L7_88 = L7_88 .. string.char(mp.bitxor(string.byte(A0_81, L6_87 + 2), L3_84)) .. string.char(mp.bitxor(string.byte(A0_81, L6_87 + 1), L3_84)) .. string.char(mp.bitxor(string.byte(A0_81, L6_87 + 0), L3_84))
    return mp.readu_u32(L7_88, 1)
  end
  function L7_50(A0_89)
    local L1_90, L2_91, L3_92, L4_93, L5_94, L6_95, L7_96, L8_97, L9_98, L10_99, L11_100, L12_101
    L1_90 = ""
    L2_91 = 6
    L3_92 = 0
    if A0_89 then
      L4_93 = #A0_89
    elseif L4_93 == 0 then
      L4_93 = nil
      return L4_93
    end
    L4_93 = string
    L4_93 = L4_93.byte
    L5_94 = A0_89
    L6_95 = 1
    L4_93 = L4_93(L5_94, L6_95)
    if L4_93 == 0 then
      L1_90 = "([\\x00-\\xFF]+)\\x00\\x08\\x00\\x03\\x01\\x00"
    else
      L4_93 = string
      L4_93 = L4_93.byte
      L5_94 = A0_89
      L6_95 = 1
      L4_93 = L4_93(L5_94, L6_95)
      if L4_93 == 46 then
        L1_90 = "([\\x00-\\xFF]+)\\x2e\\x26\\x2e\\x2d\\x2f\\x2e"
        L3_92 = 46
      else
        L4_93 = string
        L4_93 = L4_93.byte
        L5_94 = A0_89
        L6_95 = 1
        L4_93 = L4_93(L5_94, L6_95)
        if L4_93 == 105 then
          L1_90 = "([\\x00-\\xFF]+)\\x69\\x61\\x69\\x6a\\x68\\x69"
          L3_92 = 105
        else
          L4_93 = string
          L4_93 = L4_93.byte
          L5_94 = A0_89
          L6_95 = 1
          L4_93 = L4_93(L5_94, L6_95)
          if L4_93 == 78 then
            L1_90 = "([\\x00-\\xFF]+)\\x4e\\x46\\x4e\\x4d\\x4f\\x4e"
            L3_92 = 78
          else
            L4_93 = nil
            return L4_93
          end
        end
      end
    end
    if L1_90 == "" then
      L4_93 = nil
      return L4_93
    end
    L4_93 = MpCommon
    L4_93 = L4_93.BinaryRegExpSearch
    L5_94 = L1_90
    L6_95 = A0_89
    L5_94 = L4_93(L5_94, L6_95)
    if not L4_93 then
      L6_95 = nil
      return L6_95
    end
    L6_95 = #L5_94
    L6_95 = L6_95 + L2_91
    L6_95 = L6_95 + 1
    L7_96 = L6_95 + 4
    if L7_96 > L8_97 then
      L7_96 = nil
      return L7_96
    end
    L7_96 = ""
    for L11_100 = L6_95, #A0_89 do
      L12_101 = mp
      L12_101 = L12_101.bitxor
      L12_101 = L12_101(string.byte(A0_89, L11_100), L3_92)
      if L12_101 == 0 then
        break
      end
      L7_96 = L7_96 .. string.char(L12_101)
    end
    return L7_96
  end
  function L8_51(A0_102, A1_103)
    local L2_104, L3_105, L4_106, L5_107, L6_108, L7_109, L8_110, L9_111
    L2_104 = string.byte(A0_102, A1_103)
    L3_105 = string.byte(A0_102, A1_103 + 1)
    L4_106 = string.byte(A0_102, A1_103 + 2)
    L5_107 = string.byte(A0_102, A1_103 + 3)
    L6_108 = string.byte(A0_102, A1_103 + 4)
    L7_109 = string.byte(A0_102, A1_103 + 5)
    L8_110 = string.byte(A0_102, A1_103 + 6)
    L9_111 = string.byte(A0_102, A1_103 + 7)
    return L2_104 + L3_105 * 256 + L4_106 * 65536 + L5_107 * 16777216 + L6_108 * 4294967296 + L7_109 * 1099511627776 + L8_110 * 281474976710656 + L9_111 * 72057594037927936
  end
  function L9_52(A0_112, A1_113, A2_114)
    local L3_115, L4_116, L5_117, L6_118, L7_119, L8_120, L9_121, L10_122, L11_123, L12_124, L13_125, L14_126, L15_127, L16_128, L17_129, L18_130, L19_131, L20_132
    L3_115 = ""
    L4_116 = _UPVALUE0_
    L5_117 = A0_112
    L6_118 = A1_113 * 128
    L4_116 = L4_116(L5_117, L6_118)
    if not L4_116 then
      L5_117 = ""
      return L5_117
    end
    L5_117 = 1
    L6_118 = 2
    L7_119 = 3
    L8_120 = {
      L9_121,
      L10_122,
      L11_123,
      L12_124,
      L13_125,
      L14_126,
      L15_127,
      L16_128,
      L17_129,
      L18_130,
      L19_131,
      L20_132,
      {
        pos = 13,
        fieldType = L7_119,
        size = 256
      },
      {
        pos = 14,
        fieldType = L7_119,
        size = 16
      },
      {
        pos = 15,
        fieldType = L7_119,
        size = 128
      },
      {
        pos = 19,
        fieldType = L6_118,
        size = 4
      },
      {
        pos = 20,
        fieldType = L6_118,
        size = 4
      },
      {
        pos = 21,
        fieldType = L7_119,
        size = 256
      },
      {
        pos = 22,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 23,
        fieldType = L7_119,
        size = 128
      },
      {
        pos = 24,
        fieldType = L7_119,
        size = 128
      },
      {
        pos = 25,
        fieldType = L7_119,
        size = 6144
      },
      {
        pos = 26,
        fieldType = L7_119,
        size = 16
      },
      {
        pos = 27,
        fieldType = L7_119,
        size = 16
      },
      {
        pos = 28,
        fieldType = L6_118,
        size = 4
      },
      {
        pos = 29,
        fieldType = L7_119,
        size = 64
      },
      {
        pos = 30,
        fieldType = L7_119,
        size = 64
      },
      {
        pos = 31,
        fieldType = L6_118,
        size = 4
      },
      {
        pos = 32,
        fieldType = L7_119,
        size = 128
      },
      {
        pos = 33,
        fieldType = L7_119,
        size = 64
      },
      {
        pos = 34,
        fieldType = L7_119,
        size = 64
      },
      {
        pos = 35,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 37,
        fieldType = L6_118,
        size = 4
      },
      {
        pos = 38,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 39,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 40,
        fieldType = L6_118,
        size = 4
      },
      {
        pos = 43,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 44,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 45,
        fieldType = L6_118,
        size = 4
      },
      {
        pos = 46,
        fieldType = L7_119,
        size = 256
      },
      {
        pos = 47,
        fieldType = L7_119,
        size = 256
      },
      {
        pos = 51,
        fieldType = L7_119,
        size = 128
      },
      {
        pos = 52,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 50,
        fieldType = L5_117,
        size = 2
      },
      {
        pos = 54,
        fieldType = L7_119,
        size = 128
      }
    }
    L9_121.pos = 1
    L9_121.fieldType = L5_117
    L9_121.size = 2
    L10_122.pos = 2
    L10_122.fieldType = L5_117
    L10_122.size = 2
    L11_123.pos = 3
    L11_123.fieldType = L6_118
    L11_123.size = 4
    L12_124 = {}
    L12_124.pos = 4
    L12_124.fieldType = L6_118
    L12_124.size = 4
    L13_125 = {}
    L13_125.pos = 5
    L13_125.fieldType = L5_117
    L13_125.size = 2
    L14_126 = {}
    L14_126.pos = 6
    L14_126.fieldType = L5_117
    L14_126.size = 2
    L15_127 = {}
    L15_127.pos = 7
    L15_127.fieldType = L7_119
    L15_127.size = 256
    L16_128 = {}
    L16_128.pos = 8
    L16_128.fieldType = L7_119
    L16_128.size = 256
    L17_129 = {}
    L17_129.pos = 9
    L17_129.fieldType = L7_119
    L17_129.size = 128
    L18_130 = {}
    L18_130.pos = 10
    L18_130.fieldType = L7_119
    L18_130.size = 64
    L19_131 = {}
    L19_131.pos = 11
    L19_131.fieldType = L7_119
    L19_131.size = 256
    L20_132 = {}
    L20_132.pos = 12
    L20_132.fieldType = L7_119
    L20_132.size = 256
    for L12_124, L13_125 in L9_121(L10_122) do
      L14_126 = mp
      L14_126 = L14_126.bsplit
      L15_127 = L13_125.size
      L16_128 = 8
      L15_127 = L14_126(L15_127, L16_128)
      L16_128 = L13_125.pos
      L16_128 = L16_128 * A2_114
      L16_128 = L16_128 + 1
      L17_129 = L16_128 + A1_113
      L18_130 = "\000"
      L19_131 = string
      L19_131 = L19_131.char
      L20_132 = L13_125.pos
      L19_131 = L19_131(L20_132)
      L20_132 = "\000"
      L18_130 = L18_130 .. L19_131 .. L20_132 .. string.char(L13_125.fieldType) .. string.char(L15_127) .. string.char(L14_126)
      L19_131 = string
      L19_131 = L19_131.byte
      L20_132 = L4_116
      L19_131 = L19_131(L20_132, L16_128)
      L20_132 = L13_125.fieldType
      if L19_131 == L20_132 then
        L19_131 = L13_125.fieldType
        if L19_131 ~= L7_119 then
          L19_131 = string
          L19_131 = L19_131.sub
          L20_132 = L4_116
          L19_131 = L19_131(L20_132, L17_129, L17_129 + (L13_125.size - 1))
          L20_132 = L3_115
          L3_115 = L20_132 .. L18_130
          L20_132 = L3_115
          L3_115 = L20_132 .. string.reverse(L19_131)
        else
          L19_131 = 0
          if A1_113 == 4 then
            L20_132 = mp
            L20_132 = L20_132.readu_u32
            L20_132 = L20_132(L4_116, L17_129)
            L19_131 = L20_132
          else
            L20_132 = _UPVALUE1_
            L20_132 = L20_132(L4_116, L17_129)
            L19_131 = L20_132
          end
          if L19_131 ~= 0 then
            L20_132 = _UPVALUE0_
            L20_132 = L20_132(L19_131, L13_125.size)
            if not L20_132 then
              return ""
            end
            L3_115 = L3_115 .. L18_130
            L3_115 = L3_115 .. L20_132
          end
        end
      end
    end
    return L3_115
  end
  function L10_53(A0_133)
    local L1_134, L2_135, L3_136, L4_137, L5_138, L6_139, L7_140, L8_141, L9_142, L10_143, L11_144, L12_145, L13_146, L14_147, L15_148, L16_149
    L1_134 = rdtrace
    L2_135 = "patch started"
    L1_134(L2_135)
    L1_134 = {L2_135}
    L2_135 = 189
    L2_135 = {L3_136}
    L3_136 = 27
    L3_136 = _UPVALUE0_
    L3_136 = L3_136 and L1_134 or L2_135
    for L7_140, L8_141 in L4_137(L5_138) do
      for L12_145, L13_146 in L9_142(L10_143) do
        L14_147 = L8_141 + L13_146
        L15_148 = _UPVALUE1_
        L16_149 = L14_147
        L15_148 = L15_148(L16_149, 4)
        if not L15_148 then
          return
        end
        L16_149 = string
        L16_149 = L16_149.byte
        L16_149 = L16_149(L15_148, 1)
        if L16_149 == 117 then
          L16_149 = mp
          L16_149 = L16_149.WriteProcByte
          L16_149(L14_147, 116)
          L16_149 = rdtrace
          L16_149("patch completed")
          L16_149 = AppendToRollingQueue
          L16_149("82e27b72_" .. _UPVALUE2_, "true")
        else
          L16_149 = rdtrace
          L16_149("patch failed.")
          L16_149 = nil
          if L13_146 == 189 then
            L16_149 = _UPVALUE1_(L14_147 - 32, 48)
          elseif L13_146 == 27 then
            L16_149 = _UPVALUE1_(L14_147 - 9, 15)
          end
          AppendToRollingQueue("82e27b72_" .. _UPVALUE2_, MpCommon.Base64Encode(L16_149))
        end
      end
    end
  end
  L11_54 = mp
  L11_54 = L11_54.hstr_full_log
  L11_54 = L11_54()
  L12_55 = {}
  L13_56 = ""
  if not A0_43 then
    L14_57 = {}
    for L18_61, L19_62 in L15_58(L16_59) do
      L20_63 = L19_62.matched
      if L20_63 then
        L20_63 = L5_48
        L20_63 = L20_63(L21_64, L22_65)
        if L20_63 == nil then
          return
        end
        L14_57[L21_64] = L20_63
        if L21_64 ~= 55925 then
        elseif L21_64 == 25420 then
          for L24_67, L25_68 in L21_64(L22_65) do
            L26_69 = table
            L26_69 = L26_69.insert
            L27_70 = L12_55
            L26_69(L27_70, L28_71)
          end
        end
      end
    end
    for L18_61, L19_62 in L15_58(L16_59) do
      L20_63 = mp
      L20_63 = L20_63.readu_u16
      L20_63 = L20_63(L21_64, L22_65)
      if L20_63 ~= 256 then
        L20_63 = mp
        L20_63 = L20_63.readu_u16
        L20_63 = L20_63(L21_64, L22_65)
        if L20_63 ~= 26729 then
          L20_63 = mp
          L20_63 = L20_63.readu_u16
          L20_63 = L20_63(L21_64, L22_65)
          if L20_63 ~= 12078 then
            L20_63 = mp
            L20_63 = L20_63.readu_u16
            L20_63 = L20_63(L21_64, L22_65)
          end
        end
      else
        if L20_63 == 20302 then
          L20_63 = 0
          if L21_64 == 256 then
            L20_63 = L18_61 - 1
          else
            L20_63 = L18_61
          end
          L13_56 = L21_64
          L13_56 = L13_56 or ""
      end
      else
        L20_63 = mp
        L20_63 = L20_63.readu_u16
        L20_63 = L20_63(L21_64, L22_65)
        if L20_63 == 55925 then
          L20_63 = mp
          L20_63 = L20_63.readu_u32
          L20_63 = L20_63(L21_64, L22_65)
          if L20_63 > 2147483647 then
          elseif not L21_64 then
          else
            L24_67 = L21_64
            L25_68 = 5
            if L23_66 ~= 0 then
              L24_67 = string
              L24_67 = L24_67.char
              L25_68 = mp
              L25_68 = L25_68.bitxor
              L26_69 = string
              L26_69 = L26_69.byte
              L27_70 = L21_64
              L26_69 = L26_69(L27_70, L28_71)
              L27_70 = string
              L27_70 = L27_70.byte
              L33_76 = L27_70(L28_71, L29_72)
              L33_76 = L25_68(L26_69, L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L27_70(L28_71, L29_72))
              L24_67 = L24_67(L25_68, L26_69, L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L25_68(L26_69, L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L27_70(L28_71, L29_72)))
              L25_68 = string
              L25_68 = L25_68.char
              L26_69 = mp
              L26_69 = L26_69.bitxor
              L27_70 = string
              L27_70 = L27_70.byte
              L27_70 = L27_70(L28_71, L29_72)
              L33_76 = L28_71(L29_72, L30_73)
              L33_76 = L26_69(L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L28_71(L29_72, L30_73))
              L25_68 = L25_68(L26_69, L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L26_69(L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L28_71(L29_72, L30_73)))
              L26_69 = string
              L26_69 = L26_69.char
              L27_70 = mp
              L27_70 = L27_70.bitxor
              L31_74 = 7
              L33_76 = L29_72(L30_73, L31_74)
              L33_76 = L27_70(L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L29_72(L30_73, L31_74))
              L26_69 = L26_69(L27_70, L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L27_70(L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L29_72(L30_73, L31_74)))
              L27_70 = string
              L27_70 = L27_70.char
              L31_74 = 4
              L31_74 = L21_64
              L32_75 = 8
              L33_76 = L30_73(L31_74, L32_75)
              L33_76 = L28_71(L29_72, L30_73, L31_74, L32_75, L33_76, L30_73(L31_74, L32_75))
              L27_70 = L27_70(L28_71, L29_72, L30_73, L31_74, L32_75, L33_76, L28_71(L29_72, L30_73, L31_74, L32_75, L33_76, L30_73(L31_74, L32_75)))
            end
            L24_67 = mp
            L24_67 = L24_67.readu_u32
            L25_68 = L21_64
            L26_69 = 1
            L24_67 = L24_67(L25_68, L26_69)
            if not L22_65 or L22_65 == 0 then
            else
              L24_67 = L9_52
              L25_68 = L22_65
              L26_69 = 4
              L27_70 = 8
              L24_67 = L24_67(L25_68, L26_69, L27_70)
              L13_56 = L24_67
              else
                L20_63 = mp
                L20_63 = L20_63.readu_u16
                L20_63 = L20_63(L21_64, L22_65)
                if L20_63 == 25420 then
                  L20_63 = L5_48
                  L20_63 = L20_63(L21_64, L22_65)
                  if not L20_63 then
                    break
                  end
                  if L21_64 > 140737488355327 then
                    break
                  end
                  L24_67 = 16
                  if not L22_65 then
                    break
                  end
                  L24_67 = L22_65
                  L25_68 = 1
                  L24_67 = mp
                  L24_67 = L24_67.bsplit
                  L25_68 = L18_61
                  L26_69 = 32
                  L25_68 = L24_67(L25_68, L26_69)
                  L26_69 = mp
                  L26_69 = L26_69.bsplit
                  L27_70 = L23_66
                  L27_70 = L26_69(L27_70, L28_71)
                  if L25_68 ~= L27_70 then
                    for L31_74 = 16, 512, 16 do
                      L32_75 = ""
                      L33_76 = L5_48
                      L33_76 = L33_76(L21_64 + L31_74, 7)
                      if not L33_76 then
                        break
                      end
                      for _FORV_37_ = 0, #L22_65 - 1 do
                        L32_75 = L32_75 .. string.char(mp.bitxor(string.byte(L22_65, _FORV_37_ + 1), string.byte(L33_76, _FORV_37_ % #L33_76 + 1)))
                      end
                      L26_69, L27_70 = mp.bsplit(L23_66, 32)
                      if L25_68 == L27_70 then
                        break
                      end
                    end
                    if L25_68 ~= L27_70 then
                      break
                    end
                  end
                  L31_74 = 16
                  L13_56 = L28_71
                end
              end
              if L13_56 ~= "" then
                break
              end
              else
                L14_57 = mp
                L14_57 = L14_57.GetSMSProcArchitecture
                L14_57 = L14_57()
                if L14_57 == L15_58 then
                  L14_57 = L9_52
                  L14_57 = L14_57(L15_58, L16_59, L17_60)
                  L13_56 = L14_57
                else
                  L14_57 = L9_52
                  L14_57 = L14_57(L15_58, L16_59, L17_60)
                  L13_56 = L14_57
                end
              end
            end
          end
      end
    end
  L14_57 = versioning
  L14_57 = L14_57.IsSeville
  L14_57 = L14_57()
  if L14_57 then
    L14_57 = #L12_55
    if L14_57 > 0 then
      L14_57 = pcallEx
      L14_57 = L14_57(L15_58, L16_59, L17_60)
      if L14_57 then
        L16_59(L17_60)
      else
        L16_59(L17_60)
      end
    end
  end
  if L13_56 ~= "" then
    L14_57 = pcallEx
    L14_57 = L14_57(L15_58, L16_59, L17_60)
    if L14_57 then
      for L19_62 in L16_59(L17_60, L18_61) do
        L20_63 = string
        L20_63 = L20_63.byte
        L20_63 = L20_63(L21_64, L22_65)
        if L20_63 ~= 47 then
          L20_63 = AppendToRollingQueue
          L20_63(L21_64, L22_65)
        end
      end
    else
      L16_59(L17_60)
    end
    L13_56 = L16_59
    L19_62 = L13_56
    L20_63 = 0
    L17_60(L18_61, L19_62, L20_63, L21_64, L22_65, L23_66)
  end
  return L13_56
end
maceExtract_CobaltStrike = L0_0
function L0_0()
  local L0_150, L1_151, L2_152, L3_153, L4_154, L5_155, L6_156, L7_157
  L0_150 = mp
  L0_150 = L0_150.GetHSTRCallerId
  L0_150 = L0_150()
  L1_151 = mp
  L1_151 = L1_151.HSTR_CALLER_SMS
  if L0_150 ~= L1_151 then
    L0_150 = mp
    L0_150 = L0_150.INFECTED
    return L0_150
  end
  L0_150 = reportDetectedRegions
  L0_150()
  L0_150 = mp
  L0_150 = L0_150.hstr_full_log
  L0_150 = L0_150()
  L1_151 = nil
  for L5_155, L6_156 in L2_152(L3_153) do
    L7_157 = L6_156.matched
    if L7_157 then
      L7_157 = mp
      L7_157 = L7_157.ReadProcMem
      L7_157 = L7_157(L6_156.VA, 255)
      L1_151 = L7_157
      if L1_151 == nil then
        L7_157 = mp
        L7_157 = L7_157.INFECTED
        return L7_157
      end
      L7_157 = string
      L7_157 = L7_157.find
      L7_157 = L7_157(L1_151, "BEGINDATA", 1, true)
      if L7_157 then
        L7_157 = MpCommon
        L7_157 = L7_157.Base64Encode
        L7_157 = L7_157("SYBC_" .. L1_151)
        AppendToRollingQueue("mace_systembc", L7_157, 0, 60, 32, 1)
        break
      end
    end
  end
  return L2_152
end
maceExtract_SystemBC = L0_0
function L0_0(A0_158)
  local L1_159
  L1_159 = mp
  L1_159 = L1_159.GetHSTRCallerId
  L1_159 = L1_159()
  if L1_159 ~= mp.HSTR_CALLER_SMS then
    L1_159 = false
    return L1_159
  end
  function L1_159(A0_160)
    local L1_161, L2_162, L3_163, L4_164, L5_165, L6_166, L7_167, L8_168, L9_169, L10_170, L11_171, L12_172, L13_173, L14_174, L15_175, L16_176, L17_177, L18_178, L19_179, L20_180, L21_181, L22_182, L23_183, L24_184
    L1_161 = mp
    L1_161 = L1_161.GetScannedPPID
    L1_161 = L1_161()
    L2_162 = mp
    L2_162 = L2_162.GetSMSMemRanges
    L2_162 = L2_162()
    L3_163 = 2097152
    function L4_164(A0_185)
      if not A0_185 or A0_185 < 0 then
        return nil
      end
      if not mp.SMSVirtualQuery(A0_185) then
        return nil
      end
      if not _UPVALUE0_[mp.SMSVirtualQuery(A0_185).found_ix] then
        return nil
      end
      return _UPVALUE0_[mp.SMSVirtualQuery(A0_185).found_ix]
    end
    function L5_165(A0_186, A1_187)
      if not A0_186 or not A1_187 then
        return false
      end
      if A0_186 <= 0 or A1_187 <= 0 then
        return false
      end
      if not _UPVALUE0_(A0_186) then
        return false
      end
      if mp.bitand(_UPVALUE0_(A0_186).prot, 255) ~= 32 and mp.bitand(_UPVALUE0_(A0_186).prot, 255) ~= 64 and mp.bitand(_UPVALUE0_(A0_186).prot, 255) ~= 128 and mp.bitand(_UPVALUE0_(A0_186).prot, 255) ~= 8 and mp.bitand(_UPVALUE0_(A0_186).prot, 255) ~= 4 and mp.bitand(_UPVALUE0_(A0_186).prot, 255) ~= 2 then
        return false
      end
      return A0_186 + A1_187 > _UPVALUE0_(A0_186).addr and A0_186 + A1_187 <= _UPVALUE0_(A0_186).addr + _UPVALUE0_(A0_186).size
    end
    function L6_166(A0_188, A1_189)
      local L2_190, L3_191, L4_192, L5_193, L6_194, L7_195, L8_196, L9_197, L10_198, L11_199
      L2_190 = _UPVALUE0_
      L3_191 = A0_188
      L4_192 = A1_189
      L2_190 = L2_190(L3_191, L4_192)
      if not L2_190 then
        L2_190 = nil
        return L2_190
      end
      L2_190 = 65536
      L3_191 = _UPVALUE1_
      L4_192 = A1_189 > L3_191 and L3_191 or A1_189
      L5_193 = ""
      for L9_197 = 0, L4_192, L2_190 do
        L10_198 = L9_197 + L2_190
        if L4_192 < L10_198 then
          L11_199 = L10_198 - L4_192
          L11_199 = L2_190 - L11_199
        else
          L11_199 = L11_199 or L2_190
        end
        if L11_199 <= 0 then
          break
        end
        L5_193 = L5_193 .. mp.ReadProcMem(A0_188 + L9_197, L11_199)
      end
      return L5_193
    end
    function L7_167(A0_200)
      local L1_201, L2_202, L3_203, L4_204, L5_205
      L1_201 = mp
      L1_201 = L1_201.bitand
      L2_202 = A0_200
      L3_203 = 4294967295
      L1_201 = L1_201(L2_202, L3_203)
      L2_202 = mp
      L2_202 = L2_202.bsplit
      L3_203 = L1_201
      L4_204 = 8
      L5_205 = L2_202(L3_203, L4_204)
      return string.char(L2_202) .. string.char(L3_203) .. string.char(L4_204) .. string.char(L5_205)
    end
    function L8_168(A0_206)
      local L1_207, L2_208, L3_209, L4_210, L5_211, L6_212, L7_213, L8_214, L9_215, L10_216
      L1_207 = mp
      L1_207 = L1_207.bitand
      L2_208 = mp
      L2_208 = L2_208.shr64
      L3_209 = A0_206
      L4_210 = 32
      L2_208 = L2_208(L3_209, L4_210)
      L3_209 = 4294967295
      L1_207 = L1_207(L2_208, L3_209)
      L2_208 = mp
      L2_208 = L2_208.bitand
      L3_209 = A0_206
      L4_210 = 4294967295
      L2_208 = L2_208(L3_209, L4_210)
      L3_209 = mp
      L3_209 = L3_209.bsplit
      L4_210 = L2_208
      L5_211 = 8
      L6_212 = L3_209(L4_210, L5_211)
      L7_213 = mp
      L7_213 = L7_213.bsplit
      L8_214 = L1_207
      L9_215 = 8
      L10_216 = L7_213(L8_214, L9_215)
      return string.char(L3_209) .. string.char(L4_210) .. string.char(L5_211) .. string.char(L6_212) .. string.char(L7_213) .. string.char(L8_214) .. string.char(L9_215) .. string.char(L10_216)
    end
    function L9_169(A0_217, A1_218)
      local L2_219
      if not A0_217 or not A1_218 or A1_218 == "" then
        L2_219 = nil
        return L2_219
      end
      L2_219 = A0_217.addr
      if L2_219 then
        L2_219 = A0_217.size
        if L2_219 then
          L2_219 = A0_217.prot
          L2_219 = L2_219 and A0_217.alloc_prot
        end
      elseif not L2_219 then
        L2_219 = nil
        return L2_219
      end
      L2_219 = "\027\127\238-"
      L2_219 = L2_219 .. string.char(mp.GetSMSProcArchitecture()) .. _UPVALUE0_(A0_217.addr) .. _UPVALUE1_(A0_217.size) .. _UPVALUE1_(A0_217.alloc_prot) .. _UPVALUE1_(A0_217.prot) .. _UPVALUE1_(#A1_218) .. A1_218
      if versioning.GetEngineBuild() >= 24030 then
        L2_219 = MpCommon.GzipCompress(L2_219)
      end
      return MpCommon.Base64Encode(L2_219), #L2_219
    end
    function L10_170(A0_220)
      local L1_221, L2_222, L3_223, L4_224, L5_225
      L1_221 = 0
      L2_222 = string
      L2_222 = L2_222.format
      L3_223 = "DetectedRegions:%s"
      L4_224 = _UPVALUE0_
      L2_222 = L2_222(L3_223, L4_224)
      L3_223 = string
      L3_223 = L3_223.format
      L4_224 = "%x:%x"
      L5_225 = A0_220.addr
      L3_223 = L3_223(L4_224, L5_225, A0_220.size)
      L4_224 = IsKeyInRollingQueue
      L5_225 = L2_222
      L4_224 = L4_224(L5_225, L3_223, true)
      if not L4_224 then
        L4_224 = _UPVALUE1_
        L5_225 = A0_220.addr
        L4_224 = L4_224(L5_225, A0_220.size)
        L5_225 = _UPVALUE2_
        L5_225 = L5_225(A0_220, L4_224)
        if L5_225 ~= nil then
          L1_221 = L5_225(A0_220, L4_224)
          AppendToRollingQueue(L2_222, L3_223, L5_225)
        end
      end
      return L1_221
    end
    function L11_171(A0_226)
      local L1_227, L2_228, L3_229, L4_230
      if not A0_226 then
        L1_227 = nil
        return L1_227
      end
      L1_227 = 0
      L2_228 = {L3_229}
      L3_229 = A0_226
      L3_229 = _UPVALUE0_
      L4_230 = A0_226.addr
      L4_230 = L4_230 - 1
      L3_229 = L3_229(L4_230)
      while L3_229 do
        L4_230 = #L2_228
        L4_230 = L4_230 + 1
        L2_228[L4_230] = L3_229
        L4_230 = _UPVALUE0_
        L4_230 = L4_230(L3_229.addr - 1)
        L3_229 = L4_230
        L1_227 = L1_227 + 1
        if L1_227 == 8 then
          break
        end
      end
      L1_227 = 0
      L4_230 = _UPVALUE0_
      L4_230 = L4_230(A0_226.addr + A0_226.size + 1)
      while L4_230 do
        L2_228[#L2_228 + 1] = L4_230
        L4_230 = _UPVALUE0_(L4_230.addr + L4_230.size + 1)
        L1_227 = L1_227 + 1
        if L1_227 == 8 then
          break
        end
      end
      return L2_228
    end
    L12_172 = 0
    if not A0_160 then
      L24_184 = L14_174()
      for L16_176, L17_177 in L13_173(L14_174, L15_175, L16_176, L17_177, L18_178, L19_179, L20_180, L21_181, L22_182, L23_183, L24_184, L14_174()) do
        L18_178 = L17_177.matched
        if L18_178 then
          L18_178 = L4_164
          L19_179 = L17_177.VA
          L18_178 = L18_178(L19_179)
          if L18_178 then
            L19_179 = L11_171
            L19_179 = L19_179(L20_180)
            for L23_183, L24_184 in L20_180(L21_181) do
              if L3_163 <= L12_172 + L10_170(L24_184) then
                break
              end
              L12_172 = L12_172 + L10_170(L24_184)
            end
            break
          end
        end
      end
    else
      for L16_176, L17_177 in L13_173(L14_174) do
        L18_178 = L4_164
        L19_179 = L17_177
        L18_178 = L18_178(L19_179)
        if L18_178 then
          L19_179 = L10_170
          L19_179 = L19_179(L20_180)
          if L3_163 <= L20_180 then
            break
          end
          L12_172 = L12_172 + L19_179
        end
      end
    end
    L16_176 = string
    L16_176 = L16_176.format
    L17_177 = "%d"
    L18_178 = L12_172
    L24_184 = L16_176(L17_177, L18_178)
    L13_173(L14_174, L15_175, L16_176, L17_177, L18_178, L19_179, L20_180, L21_181, L22_182, L23_183, L24_184, L16_176(L17_177, L18_178))
  end
  return pcall(L1_159, A0_158)
end
reportDetectedRegions = L0_0
function L0_0()
  local L0_231, L1_232, L2_233, L3_234, L4_235, L5_236, L6_237, L7_238, L8_239, L9_240, L10_241, L11_242
  L0_231 = mp
  L0_231 = L0_231.GetSMSMemRanges
  L0_231 = L0_231()
  L1_232 = {}
  L11_242 = L3_234()
  for L5_236, L6_237 in L2_233(L3_234, L4_235, L5_236, L6_237, L7_238, L8_239, L9_240, L10_241, L11_242, L3_234()) do
    if L7_238 then
      for L10_241, L11_242 in L7_238(L8_239) do
        if mp.SMSVirtualQuery(L11_242) and L0_231[mp.SMSVirtualQuery(L11_242).found_ix] and L1_232[L0_231[mp.SMSVirtualQuery(L11_242).found_ix].addr] == nil then
          L1_232[L0_231[mp.SMSVirtualQuery(L11_242).found_ix].addr] = L0_231[mp.SMSVirtualQuery(L11_242).found_ix]
        end
      end
    end
  end
  return L1_232
end
getDetectedRegions = L0_0
function L0_0(A0_243)
  local L1_244, L2_245, L3_246
  L1_244 = mp
  L1_244 = L1_244.getfilename
  L1_244 = L1_244()
  if L1_244 ~= nil then
    L2_245 = string
    L2_245 = L2_245.lower
    L3_246 = L1_244
    L2_245 = L2_245(L3_246)
    L1_244 = L2_245
    L3_246 = L1_244
    L2_245 = L1_244.match
    L2_245 = L2_245(L3_246, "([^\\]+)$")
    if L2_245 ~= nil and L2_245 ~= "powershell.exe" and L2_245 ~= "cmd.exe" and L2_245 ~= "7zg.exe" and L2_245 ~= "autoconv.exe" and L2_245 ~= "robocopy.exe" and L2_245 ~= "wscript.exe" and L2_245 ~= "cscript.exe" and L2_245 ~= "skypeapp.exe" and L2_245 ~= "ctregsvr.exe" and L2_245 ~= "reg.exe" and L2_245 ~= "regedt32.exe" and L2_245 ~= "regsvr32.exe" and L2_245 ~= "mpcmdrun.exe" then
      L3_246 = true
      return L3_246
    end
  end
  L2_245 = mp
  L2_245 = L2_245.GetParentProcInfo
  L2_245 = L2_245()
  if L2_245 == nil then
    L3_246 = false
    return L3_246
  end
  L3_246 = L2_245.image_path
  if L3_246 == nil then
    return false
  end
  L3_246 = string.lower(L3_246)
  if L3_246:match("([^\\]+)$") == nil then
    return false
  end
  if L3_246:match("([^\\]+)$") == "powershell.exe" or L3_246:match("([^\\]+)$") == "cmd.exe" or L3_246:match("([^\\]+)$") == "7zg.exe" or L3_246:match("([^\\]+)$") == "autoconv.exe" or L3_246:match("([^\\]+)$") == "robocopy.exe" or L3_246:match("([^\\]+)$") == "wscript.exe" or L3_246:match("([^\\]+)$") == "cscript.exe" or L3_246:match("([^\\]+)$") == "skypeapp.exe" or L3_246:match("([^\\]+)$") == "ctregsvr.exe" or L3_246:match("([^\\]+)$") == "reg.exe" or L3_246:match("([^\\]+)$") == "regedt32.exe" or L3_246:match("([^\\]+)$") == "regsvr32.exe" or L3_246:match("([^\\]+)$") == "mpcmdrun.exe" then
    return false
  end
  mp.ReportLowfi(L3_246, A0_243)
  return true
end
CmdReportParent = L0_0
