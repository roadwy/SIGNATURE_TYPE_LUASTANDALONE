local L0_0, L1_1
function L0_0(A0_2)
  local L1_3
  L1_3 = Kernel
  L1_3 = L1_3.GetMemoryAsString
  L1_3 = L1_3(A0_2, 4)
  if L1_3 == nil then
    return 0
  end
  return string.byte(L1_3, 1) + string.byte(L1_3, 2) * 256 + string.byte(L1_3, 3) * 256 * 256 + string.byte(L1_3, 4) * 256 * 256 * 256
end
ReadPointer32 = L0_0
function L0_0(A0_4)
  local L1_5, L2_6, L3_7, L4_8, L5_9, L6_10
  L1_5 = Kernel
  L1_5 = L1_5.GetMemoryAsString
  L2_6 = A0_4
  L3_7 = 4
  L1_5 = L1_5(L2_6, L3_7)
  if L1_5 == nil then
    L2_6 = false
    L3_7 = 0
    return L2_6, L3_7
  end
  L2_6 = string
  L2_6 = L2_6.byte
  L3_7 = L1_5
  L4_8 = 1
  L2_6 = L2_6(L3_7, L4_8)
  L3_7 = string
  L3_7 = L3_7.byte
  L4_8 = L1_5
  L5_9 = 2
  L3_7 = L3_7(L4_8, L5_9)
  L4_8 = string
  L4_8 = L4_8.byte
  L5_9 = L1_5
  L6_10 = 3
  L4_8 = L4_8(L5_9, L6_10)
  L5_9 = string
  L5_9 = L5_9.byte
  L6_10 = L1_5
  L5_9 = L5_9(L6_10, 4)
  L6_10 = L3_7 * 256
  L6_10 = L2_6 + L6_10
  L6_10 = L6_10 + L4_8 * 256 * 256
  L6_10 = L6_10 + L5_9 * 256 * 256 * 256
  return true, L6_10
end
ReadPointer32_s = L0_0
function L0_0(A0_11)
  local L1_12
  L1_12 = ReadPointer32
  L1_12 = L1_12(A0_11 + 60)
  if ReadPointer32(A0_11 + L1_12) == 17744 then
    return true, L1_12
  else
    return false, 0
  end
end
GetPEOffset = L0_0
function L0_0(A0_13, A1_14)
  local L2_15, L3_16, L4_17, L5_18, L6_19, L7_20, L8_21, L9_22
  if A1_14 > 15 then
    L2_15 = false
    L3_16 = 0
    L4_17 = 0
    return L2_15, L3_16, L4_17
  end
  L2_15 = GetPEOffset
  L3_16 = A0_13
  L3_16 = L2_15(L3_16)
  if not L2_15 then
    L4_17 = false
    L5_18 = 0
    L6_19 = 0
    return L4_17, L5_18, L6_19
  end
  L4_17 = nil
  L5_18 = Kernel
  L5_18 = L5_18.GetMemoryAsString
  L6_19 = A0_13 + L3_16
  L6_19 = L6_19 + 24
  L7_20 = 2
  L5_18 = L5_18(L6_19, L7_20)
  L6_19 = readu16
  L7_20 = L5_18
  L8_21 = 0
  L6_19 = L6_19(L7_20, L8_21)
  L7_20, L8_21, L9_22 = nil, nil, nil
  if L6_19 == 267 then
    L4_17 = ReadPointer32(A0_13 + L3_16 + 116)
    if A1_14 > L4_17 then
      return false, 0, 0
    end
    L7_20 = A0_13 + L3_16 + 120 + A1_14 * 8
    L2_15, L8_21 = ReadPointer32_s(L7_20)
    if not L2_15 then
      return false, 0, 0
    end
    L2_15, L9_22 = ReadPointer32_s(L7_20 + 4)
    if not L2_15 then
      return false, 0, 0
    end
    return true, L8_21, L9_22
  elseif L6_19 == 523 then
    L4_17 = ReadPointer32(A0_13 + L3_16 + 132)
    if A1_14 > L4_17 then
      return false, 0, 0
    end
    L7_20 = A0_13 + L3_16 + 136 + A1_14 * 8
    L2_15, L8_21 = ReadPointer32_s(L7_20)
    if not L2_15 then
      return false, 0, 0
    end
    L2_15, L9_22 = ReadPointer32_s(L7_20 + 4)
    if not L2_15 then
      return false, 0, 0
    end
    return true, L8_21, L9_22
  else
    return false, 0, 0
  end
end
GetImageDataDirectory = L0_0
function L0_0(A0_23)
  local L1_24, L2_25, L3_26
  L1_24 = GetPEOffset
  L2_25 = A0_23
  L2_25 = L1_24(L2_25)
  if not L1_24 then
    L3_26 = false
    return L3_26, 0, 0
  end
  L3_26 = A0_23 + L2_25
  L3_26 = L3_26 + 40
  if not ReadPointer32_s(L3_26) then
    return false, 0
  end
  return true, A0_23 + ReadPointer32_s(L3_26)
end
GetEntryPoint = L0_0
