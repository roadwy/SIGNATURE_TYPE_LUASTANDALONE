local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "HSTR:SingleFileHostApp"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
function L0_0(A0_21)
  return tonumber(A0_21:reverse():gsub(".", function(A0_22)
    local L2_23
    L2_23 = string
    L2_23 = L2_23.format
    return L2_23("%02x", string.byte(A0_22))
  end), 16)
end
function L1_1(A0_24)
  local L1_25, L2_26
  L1_25 = {}
  L1_25.i = 1
  function L2_26(A0_27)
    A0_27.i = A0_27.i + 4
    return (mp.readu_u32(_UPVALUE0_, A0_27.i))
  end
  L1_25.ReadUInt32 = L2_26
  function L2_26(A0_28)
    A0_28.i = A0_28.i + 8
    return (mp.readu_u64(_UPVALUE0_, A0_28.i))
  end
  L1_25.ReadUInt64 = L2_26
  function L2_26(A0_29)
    A0_29.i = A0_29.i + 1
    return _UPVALUE0_:byte(A0_29.i - 1)
  end
  L1_25.ReadByte = L2_26
  function L2_26(A0_30)
    A0_30.i = A0_30.i + 1
    A0_30.i = A0_30.i + _UPVALUE0_:byte(A0_30.i)
    return (_UPVALUE0_:sub(A0_30.i, A0_30.i + _UPVALUE0_:byte(A0_30.i) - 1))
  end
  L1_25.ReadString = L2_26
  return L1_25
end
function L2_2(A0_31)
  local L1_32, L2_33, L3_34, L4_35, L5_36, L6_37, L7_38
  L1_32 = {}
  L2_33 = {}
  L1_32.Entries = L2_33
  L2_33 = _UPVALUE0_
  L2_33 = L2_33(L3_34)
  L1_32.MajorVersion = L3_34
  L1_32.MinorVersion = L3_34
  if not (L3_34 < 1) then
  elseif L3_34 > 6 then
    return L3_34
  end
  L1_32.FileCount = L3_34
  L1_32.BundleID = L3_34
  if L3_34 >= 2 then
    L1_32.DepsJsonOffset = L3_34
    L1_32.DepsJsonSize = L3_34
    L1_32.RuntimeConfigJsonOffset = L3_34
    L1_32.RuntimeConfigJsonSize = L3_34
    L1_32.Flags = L3_34
  end
  for L6_37 = 1, L1_32.FileCount do
    if L6_37 > 200 then
      break
    end
    L7_38 = {}
    L7_38.Offset = L2_33:ReadUInt64()
    L7_38.Size = L2_33:ReadUInt64()
    if L1_32.MajorVersion >= 6 then
      L7_38.CompressedSize = L2_33:ReadUInt64()
    else
      L7_38.CompressedSize = 0
    end
    L7_38.Type = L2_33:ReadByte()
    L7_38.RelativePath = L2_33:ReadString()
    table.insert(L1_32.Entries, L7_38)
  end
  return L1_32
end
L3_3 = hstrlog
L3_3 = L3_3[1]
L4_4 = mp
L4_4 = L4_4.readprotection
L5_5 = false
L4_4(L5_5)
L4_4 = L0_0
L5_5 = mp
L5_5 = L5_5.readfile
L6_6 = pe
L6_6 = L6_6.foffset_va
L7_7 = L3_3.VA
L6_6 = L6_6(L7_7)
L6_6 = L6_6 - 8
L7_7 = 8
L20_20 = L5_5(L6_6, L7_7)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L5_5(L6_6, L7_7))
L5_5 = mp
L5_5 = L5_5.readfile
L6_6 = L4_4
L7_7 = mp
L7_7 = L7_7.getfilesize
L7_7 = L7_7()
L7_7 = L7_7 - L4_4
L5_5 = L5_5(L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.readprotection
L7_7 = true
L6_6(L7_7)
L6_6 = pcall
L7_7 = L2_2
L8_8 = L5_5
L7_7 = L6_6(L7_7, L8_8)
L8_8 = L7_7.Entries
L9_9 = {
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  L17_17,
  L18_18,
  L19_19,
  L20_20,
  "Telegram%.Bot%.dll",
  "e_sqlite3%.dll"
}
L13_13 = "SQLite"
L14_14 = "WindowsBase%.dll"
L15_15 = "netstandard%.dll"
L19_19 = "BouncyCastle%.Crypto%.dll"
L20_20 = "ScaleHQ%.DotScreen%.dll"
L10_10(L11_11)
for L13_13, L14_14 in L10_10(L11_11) do
  L15_15 = false
  for L19_19, L20_20 in L16_16(L17_17) do
    if string.find(L14_14.RelativePath, "^" .. L20_20) ~= nil then
      L15_15 = true
      break
    end
  end
  if not L15_15 then
    if L16_16 > 0 then
      L19_19 = L14_14.Size
      L19_19 = L16_16
      L20_20 = L17_17
      L19_19 = L19_19 .. L20_20
      L20_20 = L14_14.RelativePath
      L20_20 = L20_20 .. "-[DotNetCompressed]"
      L18_18(L19_19, L20_20, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    else
      L19_19 = L14_14.RelativePath
      L20_20 = mp
      L20_20 = L20_20.ADD_VFO_TAKE_ACTION_ON_DAD
      L16_16(L17_17, L18_18, L19_19, L20_20)
    end
    L19_19 = true
    L16_16(L17_17, L18_18, L19_19)
  end
end
L10_10(L11_11)
return L10_10
