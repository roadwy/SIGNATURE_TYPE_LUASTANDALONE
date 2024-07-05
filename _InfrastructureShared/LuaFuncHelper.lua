local L0_0, L1_1
function L0_0(A0_2, A1_3)
  for _FORV_5_, _FORV_6_ in ipairs(A0_2) do
    if _FORV_6_ == A1_3 then
      return _FORV_5_
    end
  end
  return false
end
table_hasvalue = L0_0
function L0_0(A0_4, A1_5)
  local L2_6, L3_7, L4_8, L5_9, L6_10
  for L5_9, L6_10 in L2_6(L3_7) do
    if string.find(L6_10, A1_5, 1, true) then
      return L5_9
    end
  end
  return L2_6
end
table_contains = L0_0
function L0_0(A0_11)
  A0_11 = A0_11:lower()
  return ({
    [".acm"] = "\\x4d\\x5a",
    [".ax"] = "\\x4d\\x5a",
    [".cpl"] = "\\x4d\\x5a",
    [".dll"] = "\\x4d\\x5a",
    [".drv"] = "\\x4d\\x5a",
    [".efi"] = "\\x4d\\x5a",
    [".exe"] = "\\x4d\\x5a",
    [".mui"] = "\\x4d\\x5a",
    [".ocx"] = "\\x4d\\x5a",
    [".scr"] = "\\x4d\\x5a",
    [".sys"] = "\\x4d\\x5a",
    [".tsp"] = "\\x4d\\x5a",
    [".xml"] = "\\x3c\\x3f",
    [".bmp"] = "\\x42\\x4d",
    [".bz2"] = "\\x42\\x5a",
    [".tbz"] = "\\x42\\x5a",
    [".jpg"] = "\\xff\\xd8",
    [".jpeg"] = "\\xff\\xd8",
    [".zip"] = "\\x50\\x4b",
    [".docx"] = "\\x50\\x4b",
    [".docm"] = "\\x50\\x4b",
    [".dotx"] = "\\x50\\x4b",
    [".dotm"] = "\\x50\\x4b",
    [".xlsx"] = "\\x50\\x4b",
    [".xlsm"] = "\\x50\\x4b",
    [".xlam"] = "\\x50\\x4b",
    [".xltm"] = "\\x50\\x4b",
    [".pptx"] = "\\x50\\x4b",
    [".pptm"] = "\\x50\\x4b",
    [".appx"] = "\\x50\\x4b",
    [".sh"] = "\\x23\\x21",
    [".mp3"] = "\\x49\\x44",
    [".swf"] = "\\x46\\x57",
    [".flv"] = "\\x46\\x4c",
    [".ogg"] = "\\x4f\\x67",
    [".gz"] = "\\x1f\\x8b",
    [".mp4"] = "\\x00\\x00",
    [".gzip"] = "\\x1f\\x8b",
    [".tgz"] = "\\x1f\\x8b",
    [".slk"] = "\\x49\\x44",
    [".tiff"] = "\\x4d\\x4d\\x00\\x2a",
    [".cab"] = "\\x4d\\x53\\x43\\x46",
    [".mid"] = "\\x4d\\x54\\x68\\x64",
    [".midi"] = "\\x4d\\x54\\x68\\x64",
    [".dmp"] = "\\x4d\\x44\\x4d\\x50",
    [".mdmp"] = "\\x4d\\x44\\x4d\\x50",
    [".doc"] = "\\xd0\\xcf\\x11\\xe0",
    [".xls"] = "\\xd0\\xcf\\x11\\xe0",
    [".ppt"] = "\\xd0\\xcf\\x11\\xe0",
    [".msi"] = "\\xd0\\xcf\\x11\\xe0",
    [".msg"] = "\\xd0\\xcf\\x11\\xe0",
    [".png"] = "\\x89\\x50\\x4e\\x47",
    [".gif"] = "\\x47\\x49\\x46\\x38",
    [".woff"] = "\\x77\\x4f\\x46\\x46",
    [".rar"] = "\\x52\\x61\\x72\\x21",
    [".7z"] = "\\x37\\x7a\\xbc\\xaf",
    [".7zip"] = "\\x37\\x7a\\xbc\\xaf",
    [".crx"] = "\\x43\\x72\\x32\\x34",
    [".ttf"] = "\\x00\\x01\\x00\\x00",
    [".dex"] = "\\x64\\x65\\x78\\x0a",
    [".deb"] = "\\x21\\x3c\\x61\\x72",
    [".pst"] = "\\x21\\x42\\x44\\x4e",
    [".vbe"] = "\\x23\\x40\\x7e\\x5e",
    [".dwg"] = "\\x41\\x43\\x31\\x30",
    [".riff"] = "\\x52\\x49\\x46\\x46",
    [".webp"] = "\\x52\\x49\\x46\\x46",
    [".sis"] = "\\x7a\\x1a\\x20\\x10",
    [".sisx"] = "\\x7a\\x1a\\x20\\x10",
    [".lnk"] = "\\x4c\\x00\\x00\\x00",
    [".arw"] = "\\x49\\x49\\x2a\\x00",
    [".nef"] = "\\x49\\x49\\x2a\\x00",
    [".cr2"] = "\\x49\\x49\\x2a\\x00",
    [".rw2"] = "\\x49\\x49\\x55\\x00",
    [".psd"] = "\\x38\\x42\\x50\\x53",
    [".w3n"] = "\\x48\\x4d\\x33\\x57",
    [".rtf"] = "\\x7b\\x5c\\x72\\x74",
    [".pdf"] = "\\x25\\x50\\x44\\x46",
    [".sqlite"] = "\\x53\\x51\\x4c\\x69",
    [".sqlite3"] = "\\x53\\x51\\x4c\\x69",
    [".s3db"] = "\\x53\\x51\\x4c\\x69",
    [".pnf"] = "\\x01\\x03\\x02\\x00",
    [".class"] = "\\xca\\xfe\\xba\\xbe",
    [".jsp"] = "\\xca\\xfe\\xba\\xbe"
  })[A0_11]
end
GetMagicFromExtension = L0_0
function L0_0(A0_12, A1_13)
  local L2_14
  L2_14 = A0_12.lower
  L2_14 = L2_14(A0_12)
  A0_12 = L2_14
  L2_14 = A1_13.lower
  L2_14 = L2_14(A1_13)
  A1_13 = L2_14
  L2_14 = GetMagicFromExtension
  L2_14 = L2_14(A0_12)
  if #A1_13 < 8 or L2_14 == nil then
    return nil
  end
  if #L2_14 <= #A1_13 then
    if string.sub(A1_13, 1, #L2_14) ~= L2_14 then
      return true
    end
  elseif string.sub(L2_14, 1, #A1_13) ~= A1_13 then
    return true
  end
  return false
end
ExtensionToMagicMismatch = L0_0
function L0_0(A0_15, A1_16)
  for _FORV_5_, _FORV_6_ in pairs(A0_15) do
    if _FORV_6_ == A1_16 then
      return _FORV_5_
    end
  end
  return false
end
in_array = L0_0
function L0_0(A0_17, A1_18)
  local L2_19, L3_20, L4_21, L5_22, L6_23
  L2_19 = {}
  for L6_23, _FORV_7_ in L3_20(L4_21) do
    if _FORV_7_.key == A1_18 then
      table.insert(L2_19, L6_23)
    end
  end
  L3_20 = L3_20 > 0 and L2_19 or false
  return L3_20
end
table_lookup = L0_0
function L0_0(A0_24, A1_25)
  local L2_26, L3_27, L4_28, L5_29, L6_30, L7_31, L8_32, L9_33, L10_34, L11_35
  L2_26 = {}
  for L6_30, L7_31 in L3_27(L4_28) do
    for L11_35, _FORV_12_ in L8_32(L9_33) do
      if L7_31.key == _FORV_12_ then
        table.insert(L2_26, L11_35)
      end
    end
  end
  L3_27 = L3_27 > 0 and L2_26 or false
  return L3_27
end
table_lookup_keys = L0_0
function L0_0(A0_36, A1_37, A2_38, A3_39)
  local L4_40, L5_41
  L4_40 = false
  L5_41 = nil
  for _FORV_9_, _FORV_10_ in ipairs(A0_36) do
    L5_41 = false
    for _FORV_14_, _FORV_15_ in ipairs(A1_37) do
      if L5_41 then
        L5_41 = L5_41 .. A2_38 .. _FORV_10_[_FORV_15_]
      else
        L5_41 = _FORV_10_[_FORV_15_]
      end
    end
    if L4_40 then
      L4_40 = L4_40 .. A3_39 .. L5_41
    else
      L4_40 = L5_41
    end
  end
  return L4_40
end
table_concat_r = L0_0
function L0_0(A0_42, A1_43, A2_44)
  local L3_45, L4_46, L5_47, L6_48, L7_49, L8_50, L9_51
  L3_45 = false
  L4_46 = nil
  for L8_50, L9_51 in L5_47(L6_48) do
    L4_46 = L8_50 .. A1_43 .. L9_51
    if L3_45 then
      L3_45 = L3_45 .. A2_44 .. L4_46
    else
      L3_45 = L4_46
    end
  end
  return L3_45
end
table_concat_kv = L0_0
function L0_0(A0_52)
  local L1_53, L2_54, L3_55, L4_56, L5_57, L6_58
  L1_53 = {}
  for L5_57, L6_58 in L2_54(L3_55) do
    if L6_58 ~= "" and #trim(L6_58) > 0 then
      L1_53[L5_57] = L6_58
    end
  end
  return L1_53
end
table_cleanup = L0_0
function L0_0(A0_59)
  local L1_60, L2_61
  L1_60 = {}
  L2_61 = {}
  for _FORV_6_, _FORV_7_ in ipairs(A0_59) do
    if not L1_60[_FORV_7_] then
      L2_61[#L2_61 + 1] = _FORV_7_
      L1_60[_FORV_7_] = true
    end
  end
  return L2_61
end
table_dedup = L0_0
function L0_0(...)
  local L1_63
  L1_63 = {}
  for _FORV_5_, _FORV_6_ in ipairs({
    ...
  }) do
    for _FORV_10_ = 1, #_FORV_6_ do
      L1_63[#L1_63 + 1] = _FORV_6_[_FORV_10_]
    end
  end
  return L1_63
end
table_merge = L0_0
function L0_0(A0_64, A1_65)
  A1_65 = A1_65 or {}
  if A0_64 then
    for _FORV_5_, _FORV_6_ in pairs(A0_64) do
      A1_65[_FORV_6_] = 0
    end
  end
  return A1_65
end
convert_to_hashtable = L0_0
function L0_0(A0_66, A1_67)
  local L2_68, L3_69, L4_70, L5_71, L6_72, L7_73
  if not A1_67 then
    L2_68 = {}
    A1_67 = L2_68
  end
  L2_68 = nil
  if L3_69 == "table" then
    if L3_69 then
      L2_68 = A1_67[A0_66]
    else
      L2_68 = L3_69
      A1_67[A0_66] = L2_68
      for L6_72, L7_73 in next, A0_66, nil do
        L2_68[deepCopy(L6_72, A1_67)] = deepCopy(L7_73, A1_67)
      end
    end
  else
    L2_68 = A0_66
  end
  return L2_68
end
deepCopy = L0_0
function L0_0(A0_74, A1_75)
  local L2_76
  L2_76 = MpCommon
  L2_76 = L2_76.GetPersistContextNoPath
  L2_76 = L2_76(A0_74)
  if L2_76 == nil then
    L2_76 = 0
  end
  if type(L2_76) ~= "number" then
    L2_76 = 0
  end
  L2_76 = L2_76 + A1_75
  MpCommon.OverwritePersistContextNoPath(A0_74, {L2_76}, 604800)
  return L2_76
end
UpdateScalarCounter = L0_0
function L0_0(...)
  local L1_78
  L1_78 = {
    ...
  }
  return L1_78
end
table_pack = L0_0
function L0_0(A0_79, A1_80)
  A1_80 = A1_80 or 1
  if A0_79[A1_80] ~= nil then
    return A0_79[A1_80], table_unpack(A0_79, A1_80 + 1)
  end
end
table_unpack = L0_0
function L0_0(A0_81, A1_82)
  if A1_82 == nil then
    A1_82 = true
  end
  return (encode_json_worker(A0_81, A1_82))
end
json_encode = L0_0
function L0_0(A0_83)
  local L1_84, L2_85
  L1_84 = pcall
  L2_85 = MpCommon
  L2_85 = L2_85.JsonSerialize
  L2_85 = L1_84(L2_85, A0_83)
  if not L1_84 then
    L1_84, L2_85 = pcall(encode_json_worker, A0_83, true)
  end
  return L1_84 and L2_85 or nil
end
safeJsonSerialize = L0_0
function L0_0(A0_86)
  return pcall(MpCommon.JsonDeserialize, A0_86) and pcall(MpCommon.JsonDeserialize, A0_86) or nil
end
safeJsonDeserialize = L0_0
function L0_0(A0_87)
  local L1_88, L2_89, L3_90
  L1_88 = {}
  L1_88["\\"] = "\\\\"
  L1_88["\""] = "\\\""
  L1_88["\b"] = "\\b"
  L1_88["\f"] = "\\f"
  L1_88["\n"] = "\\n"
  L1_88["\r"] = "\\r"
  L1_88["\t"] = "\\t"
  L2_89 = L1_88[A0_87]
  if not L2_89 then
    L2_89 = string
    L2_89 = L2_89.format
    L3_90 = "\\u%04x"
    L2_89 = L2_89(L3_90, A0_87:byte())
  end
  return L2_89
end
escapeChar4Json = L0_0
function L0_0(A0_91)
  return "\"" .. string.gsub(A0_91, "[%z\001-\031\\\"]", escapeChar4Json) .. "\""
end
encodeString4Json = L0_0
function L0_0(A0_92)
  return string.format("%.14g", A0_92)
end
encodeNumber4Json = L0_0
function L0_0(A0_93)
  local L1_94, L2_95, L3_96
  if A0_93 == nil then
    L1_94 = "null"
    return L1_94
  end
  L1_94 = {}
  L2_95 = encodeString4Json
  L1_94.string = L2_95
  L2_95 = encodeNumber4Json
  L1_94.number = L2_95
  L2_95 = tostring
  L1_94.boolean = L2_95
  L2_95 = tostring
  L1_94["function"] = L2_95
  L2_95 = type
  L3_96 = A0_93
  L2_95 = L2_95(L3_96)
  L3_96 = L1_94[L2_95]
  L3_96 = L3_96 or tostring
  return L3_96(A0_93)
end
encodeScalar4Json = L0_0
function L0_0(A0_97, A1_98, A2_99, A3_100)
  local L4_101, L5_102, L6_103, L7_104, L8_105, L9_106, L10_107, L11_108, L12_109, L13_110, L14_111, L15_112, L16_113
  if A0_97 == nil then
    L4_101 = "null"
    return L4_101
  end
  L4_101 = ""
  if not A2_99 then
    L5_102 = {}
    A2_99 = L5_102
  end
  L5_102 = A2_99[A0_97]
  if L5_102 then
    L5_102 = L4_101
    L6_103 = "\"circular reference\""
    L4_101 = L5_102 .. L6_103
  end
  A2_99[A0_97] = true
  if A1_98 then
    L5_102 = ""
  else
    L5_102 = L5_102 or "\r\n"
  end
  L6_103 = type
  L7_104 = A0_97
  L6_103 = L6_103(L7_104)
  if L6_103 == "table" then
    L7_104 = ""
    if A1_98 then
      L8_105 = ""
    else
      L8_105 = L8_105 or "  "
    end
    L9_106 = ""
    L10_107 = 0
    if not A3_100 then
      A3_100 = 0
    elseif not A1_98 then
      L11_108 = str_repeat
      L11_108 = L11_108(L12_109, L13_110)
      L9_106 = L11_108
      L11_108 = L9_106
      L7_104 = L11_108 .. L12_109
    end
    if A1_98 then
      L11_108 = 0
    elseif not L11_108 then
      L11_108 = maxKeyLength
      L11_108 = L11_108(L12_109)
      L11_108 = L11_108 + 3
    end
    if L12_109 == nil then
    else
      if L12_109 == nil then
        if A3_100 == 0 then
          L4_101 = L12_109 .. L13_110 .. L14_111
        else
          L4_101 = L12_109 .. L13_110
        end
        for L15_112, L16_113 in L12_109(L13_110) do
          if L15_112 > 1 then
            L4_101 = L4_101 .. "," .. (A1_98 and "" or " ")
          end
          if type(L16_113) == "table" then
            L4_101 = L4_101 .. string.format("{", L7_104, L8_105)
            if rawget(L16_113, 1) == nil and next(L16_113) == nil then
              L4_101 = L4_101 .. "}"
            else
              L4_101 = L4_101 .. L5_102 .. encode_json_worker(L16_113, A1_98, A2_99, A3_100 + 1)
            end
          else
            L4_101 = L4_101 .. L5_102 .. encodeScalar4Json(L16_113)
          end
        end
        L15_112 = "]"
        L4_101 = L12_109 .. L13_110 .. L14_111 .. L15_112
    end
    else
      if A3_100 == 0 then
        L15_112 = L5_102
        L4_101 = L12_109 .. L13_110 .. L14_111 .. L15_112
      end
      for L15_112, L16_113 in L12_109(L13_110) do
        if L10_107 > 0 then
          L4_101 = L4_101 .. "," .. L5_102
        end
        L10_107 = L10_107 + 1
        if type(L16_113) == "table" then
          if rawget(L16_113, 1) ~= nil or next(L16_113) == nil then
            L4_101 = L4_101 .. string.format(A1_98 and "%s%s:[" or "%s%s: [", L7_104, addPadding(encodeScalar4Json(L15_112), L11_108)) .. L5_102
          else
            L4_101 = L4_101 .. string.format(A1_98 and "%s%s:{" or "%s%s: {", L7_104, addPadding(encodeScalar4Json(L15_112), L11_108)) .. L5_102
          end
          L4_101 = L4_101 .. encode_json_worker(L16_113, A1_98, A2_99, A3_100 + 1)
        else
          L4_101 = L4_101 .. string.format(A1_98 and "%s%s:%s" or "%s%s: %s", L7_104, addPadding(encodeScalar4Json(L15_112), L11_108), encodeScalar4Json(L16_113))
        end
      end
      if not L10_107 then
        L4_101 = L12_109 .. L13_110 .. L14_111
      else
        L4_101 = L12_109 .. L13_110
      end
      L4_101 = L12_109 .. L13_110 .. L14_111
    end
  else
    L7_104 = L4_101
    L8_105 = encodeScalar4Json
    L9_106 = A0_97
    L8_105 = L8_105(L9_106)
    L9_106 = L5_102
    L4_101 = L7_104 .. L8_105 .. L9_106
  end
  return L4_101
end
encode_json_worker = L0_0
function L0_0(A0_114)
  if tonumber(A0_114) ~= nil then
    return true
  end
  return false
end
is_numeric = L0_0
function L0_0(A0_115)
  if tobool(A0_115) ~= nil then
    return true
  end
  return false
end
is_boolean = L0_0
function L0_0(A0_116)
  if type(A0_116) == "bool" then
    return A0_116
  end
  if type(A0_116) == "string" then
    if A0_116 == "true" then
      return true
    end
    if A0_116 == "false" then
      return false
    end
  end
end
tobool = L0_0
function L0_0(A0_117)
  local L1_118, L2_119, L3_120, L4_121
  L1_118 = msb(math_floor(A0_117))
  L2_119 = mp.shl32(1, L1_118)
  L3_120 = A0_117 / L2_119
  L4_121 = (2 + (-1 + (0 - 0 * L3_120) * L3_120) * L3_120) * L3_120 - 1
  L4_121 = L4_121 + L1_118 * 69314718 / 100000000
  return L4_121
end
math_ln = L0_0
function L0_0(A0_122)
  return math_ln(A0_122) / math_ln(2)
end
math_log2 = L0_0
function L0_0(A0_123, A1_124)
  local L3_125, L4_126, L5_127, L6_128
  L3_125 = 1
  for _FORV_6_ = 1, A1_124 do
    L3_125 = L3_125 * A0_123
  end
  return L3_125
end
math_pow = L0_0
function L0_0(A0_129, A1_130)
  local L2_131, L3_132
  L2_131 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  L3_132 = ""
  while A0_129 > 0 do
    L3_132 = string.char(string.byte(L2_131, A0_129 % A1_130 + 1)) .. L3_132
    A0_129 = math_floor(A0_129 / A1_130)
  end
  return L3_132
end
math_base = L0_0
function L0_0(A0_133)
  local L1_134
  if A0_133 < 0 then
    L1_134 = -A0_133
    return L1_134
  else
    return A0_133
  end
end
math_abs = L0_0
function L0_0(...)
  local L2_136, L3_137, L4_138, L5_139
  L2_136 = L0_135[1]
  for _FORV_5_ = 2, #L0_135 do
    if L2_136 < L0_135[_FORV_5_] then
      L2_136 = L0_135[_FORV_5_]
    end
  end
  return L2_136
end
math_max = L0_0
function L0_0(...)
  local L2_141, L3_142, L4_143, L5_144
  L2_141 = L0_140[1]
  for _FORV_5_ = 2, #L0_140 do
    if L2_141 > L0_140[_FORV_5_] then
      L2_141 = L0_140[_FORV_5_]
    end
  end
  return L2_141
end
math_min = L0_0
function L0_0(A0_145)
  local L1_146
  L1_146 = tonumber
  L1_146 = L1_146(string.format("%.f", A0_145))
  if A0_145 < L1_146 then
    L1_146 = L1_146 - 1
  end
  return L1_146
end
math_floor = L0_0
function L0_0(A0_147)
  local L1_148, L2_149
  L1_148 = math_round
  L2_149 = A0_147 / 10
  L1_148 = L1_148(L2_149)
  L2_149 = A0_147 - L1_148
  return L1_148, L2_149
end
math_modf = L0_0
function L0_0(A0_150)
  local L1_151
  L1_151 = tonumber
  L1_151 = L1_151(string.format("%.f", A0_150))
  if A0_150 > L1_151 then
    L1_151 = L1_151 + 1
  end
  return L1_151
end
math_ceil = L0_0
function L0_0(A0_152, A1_153)
  local L2_154
  A1_153 = A1_153 or 0
  L2_154 = tonumber
  return L2_154(string.format("%." .. A1_153 .. "f", A0_152))
end
math_round = L0_0
function L0_0(A0_155)
  while A0_155 ~= 0 do
    A0_155 = mp.shr32(A0_155, 1)
  end
  return 0 + 1
end
msb = L0_0
function L0_0(A0_156)
  local L1_157
  L1_157 = 0
  if A0_156 >= 0 and A0_156 < 1 then
    L1_157 = 0
  elseif A0_156 >= 1 and A0_156 < 2 then
    L1_157 = 1
  elseif A0_156 >= 2 and A0_156 < 6 then
    L1_157 = 2
  elseif A0_156 >= 6 and A0_156 < 12 then
    L1_157 = 3
  elseif A0_156 >= 12 and A0_156 < 20 then
    L1_157 = 4
  elseif A0_156 >= 20 and A0_156 < 30 then
    L1_157 = 5
  elseif A0_156 >= 30 and A0_156 < 42 then
    L1_157 = 6
  elseif A0_156 >= 42 and A0_156 < 56 then
    L1_157 = 7
  elseif A0_156 >= 56 and A0_156 < 72 then
    L1_157 = 8
  elseif A0_156 >= 72 and A0_156 < 90 then
    L1_157 = 9
  elseif A0_156 >= 90 and A0_156 < 110 then
    L1_157 = 10
  elseif A0_156 >= 110 and A0_156 < 132 then
    L1_157 = 11
  elseif A0_156 >= 132 and A0_156 < 156 then
    L1_157 = 12
  elseif A0_156 >= 156 and A0_156 < 182 then
    L1_157 = 13
  elseif A0_156 >= 182 and A0_156 < 210 then
    L1_157 = 14
  elseif A0_156 >= 210 and A0_156 < 240 then
    L1_157 = 15
  elseif A0_156 >= 240 and A0_156 < 272 then
    L1_157 = 16
  elseif A0_156 >= 272 and A0_156 < 306 then
    L1_157 = 17
  elseif A0_156 >= 306 and A0_156 < 342 then
    L1_157 = 18
  elseif A0_156 >= 342 and A0_156 < 380 then
    L1_157 = 19
  elseif A0_156 >= 380 and A0_156 < 420 then
    L1_157 = 20
  end
  return L1_157
end
math_sqrt_int = L0_0
function L0_0(A0_158)
  local L1_159, L2_160, L3_161, L4_162, L5_163
  L1_159 = type
  L1_159 = L1_159(L2_160)
  if L1_159 ~= "string" then
    L1_159 = tonumber
    return L1_159(L2_160)
  end
  L1_159 = 0
  for L5_163 = 1, #A0_158 do
    L1_159 = L1_159 + A0_158:byte(L5_163) * math_pow(256, L5_163 - 1)
  end
  return L1_159
end
parseInt = L0_0
function L0_0(A0_164)
  return (A0_164:gsub("..", function(A0_165)
    return string.char(tonumber(A0_165, 16))
  end))
end
fromhex = L0_0
function L0_0(A0_166)
  return (A0_166:gsub(".", function(A0_167)
    local L2_168
    L2_168 = string
    L2_168 = L2_168.format
    return L2_168("%02X", string.byte(A0_167))
  end))
end
tohex = L0_0
function L0_0(A0_169, A1_170)
  local L2_171, L3_172, L4_173, L5_174, L6_175, L7_176
  A1_170 = A1_170 or 13
  L2_171 = {}
  for L6_175 = 1, #A0_169 do
    L7_176 = A0_169.byte
    L7_176 = L7_176(A0_169, L6_175)
    if L7_176 >= 65 and L7_176 <= 90 then
      L7_176 = (L7_176 - 65 + A1_170) % 26 + 65
    elseif L7_176 >= 97 and L7_176 <= 122 then
      L7_176 = (L7_176 - 97 + A1_170) % 26 + 97
    end
    L2_171[#L2_171 + 1] = string.char(L7_176)
  end
  return L3_172(L4_173)
end
rot_decrypt = L0_0
function L0_0(A0_177, A1_178)
  return (math_sqrt_int(math_pow(math_abs(A0_177[1] - A1_178[1]), 2) + math_pow(math_abs(A0_177[2] - A1_178[2]), 2)))
end
euclideanDistance = L0_0
function L0_0(A0_179, A1_180, A2_181)
  local L3_182, L4_183, L5_184
  L3_182 = -1
  L4_183 = 0
  L5_184 = 0
  repeat
    L4_183, L5_184 = string.find(A0_179, A1_180, L5_184 + 1, true)
    if L4_183 and A2_181 <= L4_183 then
      break
    end
    L3_182 = L4_183
  until L4_183 == nil
  return L3_182
end
lastIndexOf = L0_0
function L0_0(A0_185, A1_186)
  local L2_187, L3_188, L4_189, L5_190, L6_191
  if not A0_185 or not A1_186 then
    return L2_187
  end
  if L2_187 ~= 1 then
    return L2_187
  end
  if L2_187 < L3_188 then
    return L2_187
  end
  for L5_190 = #A0_185, 1, -1 do
    L6_191 = string
    L6_191 = L6_191.char
    L6_191 = L6_191(string.byte(A0_185, L5_190))
    if L6_191 == A1_186 then
      return L5_190
    end
  end
  return L2_187
end
lastIndexOfChar = L0_0
function L0_0(A0_192, A1_193, A2_194)
  if not A0_192 then
    return A2_194
  end
  if type(A2_194) ~= "table" then
    A2_194 = {}
  end
  return A2_194
end
split = L0_0
function L0_0(A0_195, A1_196, A2_197, A3_198)
  local L4_199, L5_200, L6_201, L7_202
  if not A0_195 then
    return A2_197
  end
  L4_199 = type
  L5_200 = A2_197
  L4_199 = L4_199(L5_200)
  if L4_199 ~= "table" then
    L4_199 = {}
    A2_197 = L4_199
  end
  L4_199 = string
  L4_199 = L4_199.find
  L5_200 = A0_195
  L6_201 = A1_196
  L5_200 = L4_199(L5_200, L6_201)
  L6_201 = string
  L6_201 = L6_201.sub
  L7_202 = A0_195
  L6_201 = L6_201(L7_202, 1, L4_199 - 1)
  L7_202 = string
  L7_202 = L7_202.sub
  L7_202 = L7_202(A0_195, L5_200 + 1)
  if tonumber(L7_202) then
    L7_202 = tonumber(L7_202)
  end
  if A3_198 then
    L7_202 = A3_198(L6_201, L7_202)
  end
  A2_197[L6_201] = L7_202
  return A2_197
end
kvsplit = L0_0
function L0_0(A0_203, A1_204)
  local L2_205, L3_206, L4_207, L5_208, L6_209, L7_210, L8_211, L9_212, L10_213, L11_214, L12_215
  L2_205 = #A0_203
  L2_205 = L2_205 + 1
  L3_206 = #A1_204
  L3_206 = L3_206 + 1
  L4_207 = {}
  if L2_205 == 0 then
    return L3_206
  elseif L3_206 == 0 then
    return L2_205
  elseif A0_203 == A1_204 then
    return L5_208
  end
  for L8_211 = 0, L2_205 do
    L4_207[L8_211] = L9_212
    L9_212[0] = L8_211
  end
  for L8_211 = 0, L3_206 do
    L9_212[L8_211] = L8_211
  end
  for L8_211 = 1, L2_205 do
    for L12_215 = 1, L3_206 do
      if A0_203:byte(L8_211) == A1_204:byte(L12_215) then
        L4_207[L8_211][L12_215] = L4_207[L8_211 - 1][L12_215 - 1]
      else
        L4_207[L8_211][L12_215] = math_min(L4_207[L8_211 - 1][L12_215], L4_207[L8_211][L12_215 - 1], L4_207[L8_211 - 1][L12_215 - 1]) + 1
      end
    end
  end
  return L5_208
end
getLevenshteinDistance = L0_0
function L0_0(A0_216, A1_217)
  return str_split(A0_216, A1_217)
end
explode = L0_0
function L0_0(A0_218, A1_219)
  local L2_220, L3_221, L4_222
  L2_220 = {}
  L3_221 = string
  L3_221 = L3_221.format
  L4_222 = "[%s]"
  L3_221 = L3_221(L4_222, A1_219 or "%s")
  L4_222 = 1
  while true do
    if not A0_218:find(L3_221, L4_222) then
      L2_220[#L2_220 + 1] = A0_218:sub(L4_222)
      break
    end
    L2_220[#L2_220 + 1] = A0_218:sub(L4_222, A0_218:find(L3_221, L4_222) - 1)
    L4_222 = A0_218:find(L3_221, L4_222) + 1
  end
  return L2_220
end
str_split = L0_0
function L0_0(A0_223, A1_224)
  if not A0_223 or not A1_224 then
    return false
  end
  if #A1_224 > #A0_223 then
    return false
  end
  return A1_224 == "" or string.sub(A0_223, -string.len(A1_224)) == A1_224
end
StringEndsWith = L0_0
function L0_0(A0_225, A1_226)
  local L2_227, L3_228, L4_229
  L2_227 = A1_226 == "" or L2_227 == A1_226
  return L2_227
end
StringStartsWith = L0_0
function L0_0(A0_230, A1_231)
  local L2_232, L3_233, L4_234, L5_235, L6_236
  if A1_231 == nil then
    A1_231 = "%s"
  end
  L2_232 = {}
  L6_236 = A1_231
  for L6_236 in L3_233(L4_234, L5_235) do
    table.insert(L2_232, L6_236)
  end
  return L2_232
end
StringSplit = L0_0
function L0_0(A0_237, A1_238, A2_239, A3_240)
  local L4_241, L5_242, L6_243, L7_244, L8_245, L9_246, L10_247
  L4_241 = 1
  L5_242 = 2
  L6_243 = 3
  L7_244 = type
  L8_245 = A0_237
  L7_244 = L7_244(L8_245)
  if L7_244 ~= "string" then
    L7_244 = tostring
    L8_245 = A0_237
    L7_244 = L7_244(L8_245)
    A0_237 = L7_244
  end
  A2_239 = A2_239 or " "
  A3_240 = A3_240 or L4_241
  L7_244 = #A0_237
  if A1_238 < L7_244 then
    return A0_237
  else
    L7_244 = #A0_237
    L7_244 = A1_238 - L7_244
    if A3_240 == L6_243 then
      L8_245 = ""
      L9_246 = ""
      L10_247 = math_floor
      L10_247 = L10_247(L7_244 / 2)
      L8_245 = str_repeat_to_length(A2_239, L10_247)
      L9_246 = str_repeat_to_length(A2_239, L10_247 + L7_244 % 2)
      return L8_245 .. A0_237 .. L9_246
    elseif A3_240 == L5_242 then
      L8_245 = str_repeat_to_length
      L9_246 = A2_239
      L10_247 = L7_244
      L8_245 = L8_245(L9_246, L10_247)
      L9_246 = L8_245
      L10_247 = A0_237
      L9_246 = L9_246 .. L10_247
      return L9_246
    else
      L8_245 = str_repeat_to_length
      L9_246 = A2_239
      L10_247 = L7_244
      L8_245 = L8_245(L9_246, L10_247)
      L9_246 = A0_237
      L10_247 = L8_245
      L9_246 = L9_246 .. L10_247
      return L9_246
    end
    return A0_237
  end
end
str_pad = L0_0
function L0_0(A0_248, A1_249)
  A1_249 = A1_249 or " "
  return rtrim(ltrim(A0_248, A1_249), A1_249)
end
trim = L0_0
function L0_0(A0_250, A1_251)
  A1_251 = A1_251 or " "
  return string.gsub(A0_250, "^([" .. A1_251 .. "]+)", "")
end
ltrim = L0_0
function L0_0(A0_252, A1_253)
  A1_253 = A1_253 or " "
  return string.gsub(A0_252, "([" .. A1_253 .. "]+)$", "")
end
rtrim = L0_0
function L0_0(A0_254, A1_255)
  local L2_256
  L2_256 = type
  L2_256 = L2_256(A0_254)
  if L2_256 ~= "string" then
    L2_256 = tostring
    L2_256 = L2_256(A0_254)
    A0_254 = L2_256
  end
  L2_256 = #A0_254
  if A1_255 < L2_256 then
    return A0_254
  else
    L2_256 = str_repeat
    L2_256 = L2_256(" ", A1_255 - #A0_254)
    return A0_254 .. L2_256
  end
end
addPadding = L0_0
function L0_0(A0_257)
  local L1_258, L2_259, L3_260, L4_261, L5_262
  L1_258 = 0
  for L5_262, _FORV_6_ in L2_259(L3_260) do
    if type(L5_262) == "number" then
      L5_262 = tostring(L5_262)
    end
    if L1_258 < #L5_262 then
      L1_258 = #L5_262
    end
  end
  return L1_258
end
maxKeyLength = L0_0
function L0_0(A0_263)
  local L1_264, L2_265, L3_266, L4_267, L5_268
  L1_264 = false
  for L5_268, _FORV_6_ in L2_265(L3_266) do
    if not string.match(L5_268, "^[%w_]+$") then
      L1_264 = true
      break
    end
  end
  return L1_264
end
function L1_1(A0_269, A1_270)
  local L2_271
  if A0_269 then
    L2_271 = #A0_269
  elseif L2_271 == 0 then
    return A0_269
  end
  L2_271 = str_repeat
  L2_271 = L2_271(A0_269, math_ceil(A1_270 / #A0_269))
  return string.sub(L2_271, A1_270)
end
str_repeat_to_length = L1_1
function L1_1(A0_272, A1_273)
  return string.rep(A0_272, A1_273)
end
str_repeat = L1_1
function L1_1(A0_274)
  return string.reverse(A0_274)
end
str_reverse = L1_1
function L1_1(A0_275, A1_276)
  local L2_277, L3_278, L4_279, L5_280
  L2_277 = string.byte(A0_275, A1_276)
  L3_278 = string.byte(A0_275, A1_276 + 1)
  L4_279 = string.byte(A0_275, A1_276 + 2)
  L5_280 = string.byte(A0_275, A1_276 + 3)
  return L2_277 * 16777216 + L3_278 * 65536 + L4_279 * 256 + L5_280
end
readu32bigend = L1_1
function L1_1(A0_281, A1_282)
  local L2_283, L3_284
  L2_283 = string.byte(A0_281, A1_282)
  L3_284 = string.byte(A0_281, A1_282 + 1)
  return L2_283 * 256 + L3_284
end
readu16bigend = L1_1
function L1_1(A0_285, A1_286, ...)
  local L3_288, L4_289, L5_290, L6_291
  function L3_288(A0_292, A1_293)
    A1_293 = A1_293 or 1
    if A0_292[A1_293] ~= nil then
      return A0_292[A1_293], _UPVALUE0_(A0_292, A1_293 + 1)
    end
  end
  L4_289 = {
    [3] = L5_290(L6_291, ...)
  }
  L5_290 = pcall
  L6_291 = A1_286
  L6_291 = L5_290(L6_291, ...)
  ;({
    [3] = L5_290(L6_291, ...)
  })[1] = L5_290
  ;({
    [3] = L5_290(L6_291, ...)
  })[2] = L6_291
  L5_290 = L4_289[1]
  if not L5_290 then
    L5_290 = "LuaError"
    L6_291 = A0_285
    L6_291 = L6_291 .. ":" .. L4_289[2]
    AppendToRollingQueue(L5_290, L6_291, 0, 60, 32, 1)
  end
  L5_290 = L3_288
  L6_291 = L4_289
  return L5_290(L6_291)
end
pcallEx = L1_1
function L1_1(A0_294)
  local L1_295, L2_296
  L1_295 = "RdTrace"
  L2_296 = string
  L2_296 = L2_296.format
  L2_296 = L2_296("%x", crypto.CRC32Buffer(-1, A0_294, 0, #A0_294))
  AppendToRollingQueue(L1_295, L2_296, 0, 120, 32, 1)
end
rdtrace = L1_1
function L1_1(A0_297)
  if pcall(MpCommon.RollingQueueQuery, A0_297) then
    return pcall(MpCommon.RollingQueueQuery, A0_297)
  end
  return nil
end
GetRollingQueue = L1_1
function L1_1(A0_298, A1_299)
  if pcall(MpCommon.RollingQueueQueryKey, A0_298, A1_299) and pcall(MpCommon.RollingQueueQueryKey, A0_298, A1_299) then
    return pcall(MpCommon.RollingQueueQueryKey, A0_298, A1_299).value
  end
  return nil
end
GetRollingQueueKeyValue = L1_1
function L1_1(A0_300, A1_301)
  if pcall(MpCommon.RollingQueueQueryMultiKey, A0_300, A1_301) then
    return pcall(MpCommon.RollingQueueQueryMultiKey, A0_300, A1_301)
  end
  return nil
end
GetRollingQueueKeyValues = L1_1
function L1_1(A0_302)
  local L1_303, L2_304
  L1_303 = GetRollingQueue
  L2_304 = A0_302
  L1_303 = L1_303(L2_304)
  if not L1_303 then
    return
  end
  L2_304 = {}
  for _FORV_6_, _FORV_7_ in ipairs(L1_303) do
    table.insert(L2_304, _FORV_7_.key)
  end
  return L2_304
end
GetRollingQueueKeys = L1_1
function L1_1(A0_305, A1_306)
  local L2_307, L3_308
  L2_307 = GetRollingQueue
  L3_308 = A0_305
  L2_307 = L2_307(L3_308)
  if not L2_307 then
    return
  end
  A1_306 = A1_306 or "|"
  L3_308 = ""
  for _FORV_7_, _FORV_8_ in ipairs(L2_307) do
    L3_308 = string.format("%s%s%s", L3_308, A1_306, _FORV_8_.key)
  end
  return L3_308 .. A1_306
end
GetRollingQueueKeysAsString = L1_1
function L1_1(A0_309, A1_310)
  if not pcall(MpCommon.RollingQueueCountValuesForKey, A0_309, A1_310) then
  end
  return 0
end
GetRollingQueueCountForKey = L1_1
function L1_1(A0_311)
  if not pcall(MpCommon.RollingQueueSumOfValues, A0_311) then
  end
  return nil
end
GetRollingQueueSumOfValues = L1_1
function L1_1(A0_312)
  local L1_313
  L1_313 = GetRollingQueue
  L1_313 = L1_313(A0_312)
  if not L1_313 then
    return
  end
  for _FORV_6_, _FORV_7_ in ipairs(L1_313) do
    ({})[_FORV_7_.key] = _FORV_7_.value
  end
  return {}
end
GetRollingQueueAsHashTable = L1_1
function L1_1(A0_314, A1_315, A2_316)
  local L3_317, L4_318, L5_319, L6_320, L7_321, L8_322, L9_323, L10_324
  L3_317 = GetRollingQueue
  L4_318 = A0_314
  L3_317 = L3_317(L4_318)
  if not L3_317 then
    return
  end
  L4_318 = ""
  A1_315 = A1_315 or "="
  A2_316 = A2_316 or "|"
  for L8_322, L9_323 in L5_319(L6_320) do
    L10_324 = string
    L10_324 = L10_324.format
    L10_324 = L10_324("%s%s%s", L9_323.key, A1_315, L9_323.value)
    if L4_318 == "" then
      L4_318 = L10_324
    else
      L4_318 = string.format("%s%s%s", L4_318, A2_316, L10_324)
    end
  end
  return L4_318
end
GetRollingQueueHashTableAsString = L1_1
function L1_1(A0_325, A1_326, A2_327, A3_328, A4_329, A5_330)
  local L6_331
  A2_327 = A2_327 or 1
  A3_328 = A3_328 or 3600
  A4_329 = A4_329 or 100
  A5_330 = A5_330 or 1
  L6_331 = pcall
  L6_331 = L6_331(MpCommon.RollingQueueAppend, A0_325, A1_326, A2_327, A3_328)
  if not L6_331 then
    pcall(MpCommon.RollingQueueCreate, A0_325, A4_329, A3_328, A5_330)
    L6_331 = pcall(MpCommon.RollingQueueAppend, A0_325, A1_326, A2_327, A3_328)
  end
  return L6_331
end
AppendToRollingQueue = L1_1
function L1_1(A0_332, A1_333, A2_334, A3_335, A4_336, A5_337, A6_338)
  local L7_339
  A3_335 = A3_335 or 1
  A4_336 = A4_336 or 3600
  A5_337 = A5_337 or 100
  A6_338 = A6_338 or 1
  L7_339 = pcall
  L7_339 = L7_339(MpCommon.RollingQueueAppendNamespaced, A0_332, A1_333, A2_334, A3_335, A4_336)
  if not L7_339 then
    pcall(MpCommon.RollingQueueCreateNamespaced, A0_332, A1_333, A5_337, A4_336, A6_338)
    L7_339 = pcall(MpCommon.RollingQueueAppendNamespaced, A0_332, A1_333, A2_334, A3_335, A4_336)
  end
  return L7_339
end
AppendToRollingQueueNamespaced = L1_1
function L1_1(A0_340)
  if not pcall(MpCommon.RollingQueueCount, A0_340) then
  end
  return 0
end
GetRollingQueueCount = L1_1
function L1_1(A0_341, A1_342, A2_343)
  local L3_344, L4_345, L5_346, L6_347, L7_348
  L3_344 = false
  L4_345 = nil
  L5_346 = false
  L6_347, L7_348 = nil, nil
  if A2_343 == nil then
    A2_343 = true or A2_343
  end
  if A2_343 then
    L5_346, L7_348 = pcall(MpCommon.RollingQueueQueryKey, A0_341, A1_342)
    if L5_346 then
      L6_347 = {L7_348}
    else
      L5_346, L6_347 = pcall(MpCommon.RollingQueueQueryMultiKey, A0_341, A1_342)
      if not L5_346 then
        L6_347 = nil
      end
    end
  else
    L5_346, L6_347 = pcall(MpCommon.RollingQueueQueryMultiKeyRegex, A0_341, A1_342)
    if not L5_346 then
      L6_347 = nil
    end
  end
  if L6_347 and next(L6_347) then
    L3_344 = true
    L4_345 = next(L6_347).value
  end
  return L3_344, L4_345, L6_347
end
IsKeyInRollingQueue = L1_1
function L1_1(A0_349, A1_350, A2_351, A3_352, A4_353)
  local L5_354, L6_355, L7_356, L8_357, L9_358
  for L8_357, L9_358 in L5_354(L6_355) do
    AppendToRollingQueue(A0_349, A1_350, L9_358, A3_352, A4_353, 0)
  end
end
AppendToMultiValueRollingQueue = L1_1
function L1_1(A0_359, A1_360, A2_361)
  local L3_362
  L3_362 = GetRollingQueueKeyValues
  L3_362 = L3_362(A0_359, A1_360)
  if L3_362 then
    for _FORV_7_, _FORV_8_ in ipairs(L3_362) do
      if _FORV_8_.value == A2_361 then
        return true
      end
    end
  end
  return false
end
IsKeyValuePairInRollingQueue = L1_1
function L1_1(A0_363)
  if A0_363 ~= nil and pcall(MpCommon.AtomicCounterValue, A0_363) then
    return pcall(MpCommon.AtomicCounterValue, A0_363)
  end
  return nil
end
GetAtomicCounter = L1_1
function L1_1(A0_364, A1_365, A2_366)
  if A0_364 ~= nil then
    A2_366 = A2_366 or 3600
    if pcall(MpCommon.AtomicCounterSet, A0_364, A1_365, A2_366) then
      if not pcall(MpCommon.AtomicCounterSet, A0_364, A1_365, A2_366) then
        return 0
      end
    elseif pcall(MpCommon.AtomicCounterAdd, A0_364, A1_365) then
      return pcall(MpCommon.AtomicCounterAdd, A0_364, A1_365)
    end
  end
  return nil
end
AddToAtomicCounter = L1_1
function L1_1(A0_367, A1_368, A2_369, A3_370, A4_371, A5_372)
  local L6_373, L7_374, L8_375, L9_376
  A2_369 = A2_369 or false
  A3_370 = A3_370 or 0
  if A4_371 == nil then
    A4_371 = true or A4_371
  end
  if A5_372 == nil then
    A5_372 = true or A5_372
  end
  L6_373 = {}
  L7_374 = {}
  L6_373.urls = L7_374
  if A5_372 then
    L7_374 = pcall
    L8_375 = MpCommon
    L8_375 = L8_375.AtomicCounterValue
    L9_376 = "GetUrlReputationThrottled"
    L8_375 = L7_374(L8_375, L9_376)
    if L7_374 and L8_375 then
      L6_373.error = 1
      return L6_373
    end
  end
  if A4_371 then
    L7_374 = pcall
    L8_375 = MpCommon
    L8_375 = L8_375.AtomicCounterValue
    L9_376 = "LCGUR"
    L8_375 = L7_374(L8_375, L9_376)
    if L7_374 then
      L9_376 = versioning
      L9_376 = L9_376.GetEngineBuild
      L9_376 = L9_376()
      if L8_375 == L9_376 then
        L6_373.error = 2
        return L6_373
      end
    end
  end
  L7_374 = table_dedup
  L8_375 = A0_367
  L7_374 = L7_374(L8_375)
  A0_367 = L7_374
  L7_374 = pcall
  L8_375 = mp
  L8_375 = L8_375.GetUrlReputation
  L9_376 = A0_367
  L8_375 = L7_374(L8_375, L9_376, A1_368, A2_369, A3_370)
  if not L7_374 then
    L9_376 = pcall
    L9_376(MpCommon.AtomicCounterSet, "LCGUR", tostring(versioning.GetEngineBuild()), 7200)
    L9_376 = bm
    if L9_376 then
      L9_376 = bm
      L9_376 = L9_376.trigger_sig
      L9_376("GetUrlReputationError", L8_375)
    end
    L6_373.error = 3
    L6_373.err_msg = L8_375
    return L6_373
  end
  if L8_375 then
    L9_376 = 0
    for _FORV_13_, _FORV_14_ in ipairs(L8_375.urls) do
      L6_373.urls[_FORV_14_.url] = {
        determination = _FORV_14_.determination,
        confidence = _FORV_14_.confidence
      }
      if _FORV_14_.urlresponsecontext then
        L6_373.urls[_FORV_14_.url].context = {}
        for _FORV_18_, _FORV_19_ in ipairs(_FORV_14_.urlresponsecontext) do
          L6_373.urls[_FORV_14_.url].context[_FORV_19_.key] = _FORV_19_.value
        end
        if L6_373.urls[_FORV_14_.url].context.throttle then
          L9_376 = math_max(L9_376, tonumber(L6_373.urls[_FORV_14_.url].context.throttle))
        end
      end
    end
    if L9_376 ~= 0 then
      pcall(MpCommon.AtomicCounterSet, "GetUrlReputationThrottled", 1, L9_376)
    end
    L8_375.urls = nil
    for _FORV_13_, _FORV_14_ in pairs(L8_375) do
      L6_373[_FORV_13_] = _FORV_14_
    end
  end
  return L6_373
end
SafeGetUrlReputation = L1_1
function L1_1(A0_377, A1_378, A2_379)
  A0_377 = A0_377:gsub("<!%-%-(.-)%-%->", "")
  A0_377 = A0_377:gsub("<%?(.-)%?>", "")
  A0_377:gsub("<([/!]?)([%a_][%w-:_]*)%s*(/?>?)([^<]*)", function(A0_380, A1_381, A2_382, A3_383)
    local L4_384
    L4_384 = #A0_380
    if L4_384 == 0 then
      L4_384 = {}
      if #A2_382 == 0 then
        for _FORV_9_, _FORV_10_, _FORV_11_, _FORV_12_, _FORV_13_ in string.gmatch(A3_383, "(([%a_][%w-:_]*)%s*=%s*(['\"])(.-)%3%s*(/?>?))") do
          L4_384[_FORV_10_] = _FORV_12_
          if #_FORV_13_ ~= 0 then
            if _FORV_13_ == "/>" then
              A3_383 = ""
            elseif _FORV_13_ == ">" then
              A3_383 = A3_383:sub(0 + #_FORV_9_ + 1)
            else
              error("invalid tag")
            end
            A2_382 = _FORV_13_
          end
        end
      end
      if not next(L4_384) then
        L4_384 = nil
      end
      _UPVALUE0_(A1_381, L4_384, A3_383:match("^%s*(.*%S)"))
      if A2_382:byte(1) == string.byte("/") then
        _UPVALUE1_(A1_381)
      end
    elseif A0_380 == "/" then
      L4_384 = _UPVALUE1_
      L4_384(A1_381)
    elseif A0_380 == "!" then
      L4_384 = error
      L4_384("unsupported tag type")
    else
      L4_384 = error
      L4_384("parsing error")
    end
  end)
end
parseXML = L1_1
function L1_1(A0_385, A1_386, A2_387, A3_388)
  A2_387 = A2_387 or 100
  A3_388 = A3_388 or 604800
  if string.sub(A0_385, 1, 12) == "\\UefiImage->" then
    if pcall(MpCommon.RollingQueueQueryKey, A1_386, A0_385) then
      return false
    end
    if not AppendToRollingQueue(A1_386, A0_385, "1", A3_388, A2_387, 1) then
      return false
    end
    return true
  end
  return false
end
CheckVulnerableUEFIImage = L1_1
function L1_1(A0_389, A1_390)
  local L2_391
  L2_391 = GetRollingQueueKeyValue
  L2_391 = L2_391("CC_filelist", A0_389)
  if not L2_391 then
    return false
  end
  if type(A1_390) ~= "table" then
    A1_390 = {
      filelist = {},
      alldata = {},
      score = 0
    }
  end
  if type(A1_390.filelist) ~= "table" then
    A1_390.filelist = {}
  end
  if type(A1_390.alldata) ~= "table" then
    A1_390.alldata = {}
  end
  if type(A1_390.score) ~= "number" then
    A1_390.score = 0
  end
  if not safeJsonDeserialize(L2_391) then
    return false
  end
  table.insert(A1_390.filelist, safeJsonDeserialize(L2_391).FileName)
  A1_390.score = A1_390.score + safeJsonDeserialize(L2_391).score
  table.insert(A1_390.alldata, L2_391)
  if safeJsonDeserialize(L2_391).parent ~= nil and not GetTrackingDataForFile(safeJsonDeserialize(L2_391).parent, A1_390) then
    return false
  end
  return true
end
GetTrackingDataForFile = L1_1
function L1_1(A0_392, A1_393)
  local L2_394, L3_395, L4_396, L5_397, L6_398, L7_399, L8_400, L9_401, L10_402, L11_403, L12_404
  if A0_392 == nil then
    L2_394 = false
    return L2_394
  end
  L2_394 = type
  L3_395 = A1_393
  L2_394 = L2_394(L3_395)
  if L2_394 ~= "table" then
    L2_394 = {}
    A1_393 = L2_394
  end
  L2_394 = MpCommon
  L2_394 = L2_394.GetPersistContextCount
  L3_395 = A0_392
  L2_394 = L2_394(L3_395)
  if L2_394 >= 0 and L2_394 <= 30 then
    L3_395 = MpCommon
    L3_395 = L3_395.GetPersistContext
    L4_396 = A0_392
    L3_395 = L3_395(L4_396)
    L4_396, L5_397 = nil, nil
    for L9_401, L10_402 in L6_398(L7_399) do
      L11_403 = "|"
      L12_404 = L10_402.sub
      L12_404 = L12_404(L10_402, 12, 16)
      L5_397 = L11_403 .. L12_404 .. "|"
      L11_403 = "|OFFAR|WARCH|OFFEM|"
      L12_404 = L11_403.find
      L12_404 = L12_404(L11_403, L5_397, 1, true)
      if L12_404 then
        L4_396 = L10_402
        break
      end
    end
    if L4_396 == nil then
      return L6_398
    end
    L4_396 = L6_398
    if L7_399 then
      for L11_403, L12_404 in L8_400(L9_401) do
        kvsplit(L12_404, "=", A1_393)
      end
    end
    if L8_400 == nil then
      return L8_400
    end
    return L8_400
  end
  L3_395 = false
  return L3_395
end
ParseContextTrackingDataForPath = L1_1
function L1_1(A0_405)
  local L1_406, L2_407, L3_408, L4_409, L5_410, L6_411, L7_412
  L1_406 = type
  L1_406 = L1_406(L2_407)
  if L1_406 ~= "table" then
    L1_406 = {}
    A0_405 = L1_406
  end
  L1_406 = MpCommon
  L1_406 = L1_406.GetPersistContextNoPath
  L1_406 = L1_406(L2_407)
  for L5_410, L6_411 in L2_407(L3_408) do
    L7_412 = {}
    if ParseContextTrackingDataForPath(L6_411, L7_412) then
      table.insert(A0_405, {Key = L6_411, L7_412})
    end
  end
  return L2_407
end
ParseContextTrackingData = L1_1
function L1_1(A0_413)
  local L1_414, L2_415, L3_416, L4_417, L5_418, L6_419, L7_420
  L1_414 = {}
  L2_415 = sysio
  L2_415 = L2_415.GetFileSize
  L3_416 = A0_413
  L2_415 = L2_415(L3_416)
  L3_416 = sysio
  L3_416 = L3_416.GetLastResult
  L3_416 = L3_416()
  L3_416 = L3_416.Success
  if not L3_416 then
    return L1_414
  end
  if L2_415 < 8 or L2_415 > 131072 then
    return L1_414
  end
  L3_416 = sysio
  L3_416 = L3_416.ReadFile
  L4_417 = A0_413
  L5_418 = 0
  L6_419 = 8
  L3_416 = L3_416(L4_417, L5_418, L6_419)
  if not L3_416 then
    return L1_414
  end
  L4_417 = mp
  L4_417 = L4_417.readu_u32
  L5_418 = L3_416
  L6_419 = 1
  L4_417 = L4_417(L5_418, L6_419)
  if L4_417 ~= 1734693456 then
    return L1_414
  end
  L5_418 = mp
  L5_418 = L5_418.readu_u32
  L6_419 = L3_416
  L7_420 = 5
  L5_418 = L5_418(L6_419, L7_420)
  if L5_418 ~= 1 then
    return L1_414
  end
  function L6_419(A0_421, A1_422)
    local L2_423, L3_424, L4_425, L5_426
    L2_423 = A1_422
    L3_424 = mp
    L3_424 = L3_424.readu_u16
    L4_425 = A0_421
    L5_426 = L2_423
    L3_424 = L3_424(L4_425, L5_426)
    if 91 ~= L3_424 then
      L3_424 = 0
      return L3_424
    end
    L2_423 = L2_423 + 2
    L4_425 = A0_421
    L3_424 = A0_421.find
    L5_426 = "%z%z"
    L3_424 = L3_424(L4_425, L5_426, L2_423)
    L4_425 = L3_424 % 2
    if L4_425 == 1 then
      L4_425 = L3_424 + 1
      L3_424 = L4_425 or L3_424
    end
    L3_424 = L3_424 + 2
    L4_425 = mp
    L4_425 = L4_425.utf16to8
    L5_426 = A0_421.sub
    L5_426 = L5_426(A0_421, L2_423, L3_424)
    L4_425 = L4_425(L5_426, L5_426(A0_421, L2_423, L3_424))
    L2_423 = L3_424
    L5_426 = mp
    L5_426 = L5_426.readu_u16
    L5_426 = L5_426(A0_421, L2_423)
    if 59 ~= L5_426 then
      L5_426 = 0
      return L5_426
    end
    L2_423 = L2_423 + 2
    L5_426 = A0_421.find
    L5_426 = L5_426(A0_421, "%z%z", L2_423)
    if L5_426 % 2 == 1 then
      L5_426 = L5_426 + 1 or L5_426
    end
    L5_426 = L5_426 + 2
    L2_423 = L5_426
    if mp.utf16to8(A0_421:sub(L2_423, L5_426)) == "\000" then
      L2_423 = L2_423 - 1
    end
    if 59 ~= mp.readu_u16(A0_421, L2_423) then
      return 0
    end
    L2_423 = L2_423 + 2
    L2_423 = L2_423 + 4
    if 59 ~= mp.readu_u16(A0_421, L2_423) then
      return 0
    end
    L2_423 = L2_423 + 2
    L2_423 = L2_423 + 4
    if 59 ~= mp.readu_u16(A0_421, L2_423) then
      return 0
    end
    L2_423 = L2_423 + 2
    L2_423 = L2_423 + mp.readu_u32(A0_421, L2_423)
    if 93 ~= mp.readu_u16(A0_421, L2_423) then
      return 0
    end
    L2_423 = L2_423 + 2
    _UPVALUE0_[#_UPVALUE0_ + 1] = {
      key = L4_425,
      value = "",
      typ = mp.readu_u32(A0_421, L2_423),
      data = A0_421:sub(L2_423, L2_423 + mp.readu_u32(A0_421, L2_423) - 1)
    }
    return L2_423 - A1_422
  end
  L7_420 = sysio
  L7_420 = L7_420.ReadFile
  L7_420 = L7_420(A0_413, 0, L2_415)
  L3_416 = L7_420
  if not L3_416 then
    return L1_414
  end
  L7_420 = 9
  while L2_415 > L7_420 do
    if L6_419(L3_416, L7_420) == 0 then
      L1_414.error = string.format("parse error at offset %d in file size %d", L7_420, L2_415)
      return L1_414
    end
    L7_420 = L7_420 + L6_419(L3_416, L7_420)
  end
  return L1_414
end
parseRegistryPol = L1_1
function L1_1(A0_427, A1_428, A2_429, A3_430, A4_431)
  local L5_432, L6_433, L7_434, L8_435, L9_436, L10_437
  if A0_427 == nil then
    L5_432 = nil
    return L5_432
  end
  if A1_428 == nil then
    L5_432 = nil
    return L5_432
  end
  A2_429 = A2_429 or 70
  A3_430 = A3_430 or false
  A4_431 = A4_431 or 2000
  L5_432 = {}
  A0_427 = L6_433
  for L9_436, L10_437 in L6_433(L7_434) do
    if A3_430 then
      L10_437 = string.gsub(L10_437, "[#?].*$", "", 1)
    end
    if mp.CheckUrl(L10_437, 0) == 0 or mp.CheckUrl(L10_437, 0) == 1 then
      if mp.CheckUrl(L10_437, 2) == 1 and mp.CheckUrl(L10_437, 0) == 0 or mp.CheckUrl(L10_437, 0) == 1 and mp.CheckUrl(L10_437, 2) == 1 and mp.CheckUrl(L10_437, 2) == 0 then
        return true
      elseif mp.CheckUrl(L10_437, 2) == 0 and mp.CheckUrl(L10_437, 0) == 0 then
        table.insert(L5_432, L10_437)
      end
    end
  end
  if L6_433 > 0 then
    L10_437 = A4_431
    if L7_434 ~= nil then
      return L7_434
    end
    for L10_437, _FORV_11_ in L7_434(L8_435) do
      if (_FORV_11_.determination == 2 or _FORV_11_.determination == 3) and A2_429 <= _FORV_11_.confidence then
        return true
      end
    end
  end
  return L6_433
end
CheckUrlReputationSimple = L1_1
function L1_1(A0_438)
  local L1_439, L2_440, L3_441, L4_442, L5_443, L6_444, L7_445, L8_446
  L1_439 = {}
  if not A0_438 or A0_438 == "" then
    return L1_439
  end
  L2_440 = StringStartsWith
  L3_441 = A0_438
  L4_442 = "\\\\"
  L2_440 = L2_440(L3_441, L4_442)
  if L2_440 then
    L3_441 = A0_438
    L2_440 = A0_438.match
    L4_442 = "^\\\\([^\\]+)\\([^\\].*)$"
    L3_441 = L2_440(L3_441, L4_442)
    if L2_440 then
      L1_439.scheme = "smb"
      L1_439.host = L2_440
      L1_439.path = L3_441
      return L1_439
    end
  end
  L3_441 = A0_438
  L2_440 = A0_438.match
  L4_442 = "^([^:/?#]+)://(.+)$"
  L3_441 = L2_440(L3_441, L4_442)
  if L2_440 and L3_441 then
    L1_439.scheme = L2_440
    L5_443 = L3_441
    L4_442 = L3_441.gsub
    L6_444 = "[/#%?]$"
    L7_445 = ""
    L4_442 = L4_442(L5_443, L6_444, L7_445)
    L1_439.host = L4_442
    L5_443 = L3_441
    L4_442 = L3_441.match
    L6_444 = "^([^/?#]+)/(.+)$"
    L5_443 = L4_442(L5_443, L6_444)
    if L4_442 then
      L7_445 = L4_442
      L6_444 = L4_442.find
      L8_446 = ":%d+$"
      L7_445 = L6_444(L7_445, L8_446)
      if L6_444 then
        L8_446 = string
        L8_446 = L8_446.sub
        L8_446 = L8_446(L4_442, 1, L6_444 - 1)
        L1_439.host = L8_446
        L8_446 = tonumber
        L8_446 = L8_446(string.sub(L4_442, L6_444 + 1))
        L1_439.port = L8_446
      else
        L1_439.host = L4_442
      end
    end
    if L5_443 then
      L1_439.path = L5_443
      L7_445 = L5_443
      L6_444 = L5_443.find
      L8_446 = "[?#]"
      L7_445 = L6_444(L7_445, L8_446)
      if L6_444 then
        L8_446 = string
        L8_446 = L8_446.sub
        L8_446 = L8_446(L5_443, 1, L6_444 - 1)
        L1_439.path = L8_446
        L8_446 = string
        L8_446 = L8_446.sub
        L8_446 = L8_446(L5_443, L6_444 + 1)
        L6_444, L7_445 = L8_446:find("#", L6_444, true)
        if L6_444 then
          L1_439.query = string.sub(L8_446, 1, L6_444 - 1)
          L1_439.fragment = string.sub(L8_446, L6_444 + 1)
        else
          L1_439.query = L8_446
        end
      end
    end
    return L1_439
  end
  L1_439.scheme = "hostname"
  L1_439.host = A0_438
  L5_443 = A0_438
  L4_442 = A0_438.find
  L6_444 = ":(%d+)/?"
  L6_444 = L4_442(L5_443, L6_444)
  if L4_442 and L6_444 then
    L7_445 = string
    L7_445 = L7_445.sub
    L8_446 = A0_438
    L7_445 = L7_445(L8_446, 1, L4_442 - 1)
    L1_439.host = L7_445
    L7_445 = tonumber
    L8_446 = L6_444
    L7_445 = L7_445(L8_446)
    L1_439.port = L7_445
  end
  return L1_439
end
ExtractPartsFromUri = L1_1
