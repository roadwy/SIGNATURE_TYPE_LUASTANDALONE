local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6, L5_7
  L0_2 = sysio
  L0_2 = L0_2.ExpandFilePath
  L0_2 = L0_2(L1_3)
  if not L0_2 then
    return L1_3
  end
  for L4_6, L5_7 in L1_3(L2_4) do
    if not string.find(L5_7, "%%SystemRoot%%") then
      return L5_7
    end
  end
  return L1_3
end
GetSystemRootPath = L0_0
function L0_0(A0_8)
  return string.char(crypto.bitand(crypto.shr32(A0_8, 24), 255)) .. string.char(crypto.bitand(crypto.shr32(A0_8, 16), 255)) .. string.char(crypto.bitand(crypto.shr32(A0_8, 8), 255)) .. string.char(crypto.bitand(A0_8, 255))
end
DwordToBytes = L0_0
function L0_0(A0_9)
  local L1_10, L2_11, L3_12, L4_13, L5_14
  L1_10 = ""
  for L5_14 = 1, #A0_9 do
    if A0_9:byte(L5_14) ~= 0 then
      L1_10 = L1_10 .. A0_9:sub(L5_14, L5_14)
    end
  end
  return L1_10
end
UTF16To8 = L0_0
function L0_0()
  local L0_15, L1_16, L2_17, L3_18, L4_19, L5_20, L6_21, L7_22, L8_23, L9_24, L10_25, L11_26, L12_27, L13_28, L14_29, L15_30, L16_31, L17_32, L18_33, L19_34, L20_35
  L0_15 = MpCommon
  L0_15 = L0_15.IsSampled
  L1_16 = 50000
  L2_17 = true
  L3_18 = true
  L4_19 = true
  L0_15 = L0_15(L1_16, L2_17, L3_18, L4_19)
  if L0_15 == false then
    return
  end
  L0_15 = GetSystemRootPath
  L0_15 = L0_15()
  if not L0_15 then
    return
  end
  L1_16 = sysio
  L1_16 = L1_16.GetFileFsVolumeInformation
  L2_17 = L0_15
  L1_16 = L1_16(L2_17)
  if not L1_16 then
    return
  end
  L2_17 = string
  L2_17 = L2_17.format
  L3_18 = "%x"
  L4_19 = L1_16.VolumeSerialNumber
  L2_17 = L2_17(L3_18, L4_19)
  L3_18 = DwordToBytes
  L4_19 = crypto
  L4_19 = L4_19.bswap32
  L5_20 = L1_16.VolumeSerialNumber
  L20_35 = L4_19(L5_20)
  L3_18 = L3_18(L4_19, L5_20, L6_21, L7_22, L8_23, L9_24, L10_25, L11_26, L12_27, L13_28, L14_29, L15_30, L16_31, L17_32, L18_33, L19_34, L20_35, L4_19(L5_20))
  L4_19 = nil
  L5_20 = sysio
  L5_20 = L5_20.RegExpandUserKey
  L5_20 = L5_20(L6_21)
  if not L5_20 then
    return
  end
  for L9_24, L10_25 in L6_21(L7_22) do
    if L11_26 then
      L13_28 = L11_26
      L14_29 = L2_17
      L4_19 = L12_27
      if L4_19 then
        break
      end
    end
  end
  if not L4_19 then
    return
  end
  for L10_25 = 0, L8_23 - 1 do
    L13_28 = crypto
    L13_28 = L13_28.bitxor
    L15_30 = L4_19
    L14_29 = L4_19.byte
    L14_29 = L14_29(L15_30, L16_31)
    L15_30 = L3_18.byte
    L20_35 = L15_30(L16_31, L17_32)
    L20_35 = L13_28(L14_29, L15_30, L16_31, L17_32, L18_33, L19_34, L20_35, L15_30(L16_31, L17_32))
  end
  if L7_22 < 8 then
    return
  end
  for L13_28, L14_29 in L10_25(L11_26) do
    L15_30 = sysio
    L15_30 = L15_30.ExpandFilePath
    L15_30 = L15_30(L16_31, L17_32)
    if L15_30 then
      for L19_34, L20_35 in L16_31(L17_32) do
        if sysio.IsFileExists(L20_35) then
          table.insert(L9_24, L20_35)
        end
      end
    end
  end
  for L13_28, L14_29 in L10_25(L11_26) do
    L15_30 = MpCommon
    L15_30 = L15_30.ReportLowfi
    L15_30(L16_31, L17_32)
  end
end
Infrastructure_ScanEmotetV5 = L0_0
