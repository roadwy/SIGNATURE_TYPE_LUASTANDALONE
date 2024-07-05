local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
function L0_0(A0_20, A1_21)
  local L2_22
  if not A1_21 then
    L2_22 = "\\SystemRoot\\system32\\drivers\\" .. A0_20 .. ".sys"
  else
    L2_22 = A1_21
  end
  return string.match(L2_22, "(%w+%.[sS][yY][sS])$")
end
function L1_1(A0_23)
  local L1_24, L2_25, L3_26, L4_27, L5_28, L6_29, L7_30, L8_31, L9_32, L10_33, L11_34, L12_35
  if A0_23 >= 2147483648 then
    A0_23 = A0_23 - 4294967296
  end
  L1_24 = "HKLM\\System\\CurrentControlSet\\Services"
  L2_25 = sysio
  L2_25 = L2_25.RegOpenKey
  L3_26 = L1_24
  L2_25 = L2_25(L3_26)
  if not L2_25 then
    L3_26 = nil
    return L3_26
  end
  L3_26 = sysio
  L3_26 = L3_26.RegEnumKeys
  L3_26 = L3_26(L4_27)
  if not L3_26 then
    return L4_27
  end
  for L7_30, L8_31 in L4_27(L5_28) do
    L9_32 = sysio
    L9_32 = L9_32.RegOpenKey
    L10_33 = L1_24
    L11_34 = "\\"
    L12_35 = L8_31
    L10_33 = L10_33 .. L11_34 .. L12_35
    L9_32 = L9_32(L10_33)
    if L9_32 then
      L10_33 = sysio
      L10_33 = L10_33.GetRegValueAsString
      L11_34 = L9_32
      L12_35 = "Type"
      L10_33 = L10_33(L11_34, L12_35)
      if L10_33 then
        L11_34 = string
        L11_34 = L11_34.char
        L12_35 = 1
        L11_34 = L11_34(L12_35)
        if L10_33 ~= L11_34 then
          L11_34 = string
          L11_34 = L11_34.char
          L12_35 = 2
          L11_34 = L11_34(L12_35)
        elseif L10_33 == L11_34 then
          L11_34 = sysio
          L11_34 = L11_34.GetRegValueAsString
          L12_35 = L9_32
          L11_34 = L11_34(L12_35, "ImagePath")
          L12_35 = _UPVALUE0_
          L12_35 = L12_35(L8_31, L11_34)
          if L12_35 and sysio.DriverNameHash(L12_35) == A0_23 then
            return L8_31
          end
        end
      end
    end
  end
end
function L2_2(A0_36)
  local L1_37, L2_38, L3_39, L4_40, L5_41, L6_42, L7_43
  L1_37 = Kernel
  L1_37 = L1_37.GetMemoryAsString
  L2_38 = A0_36
  L3_39 = 1
  L1_37 = L1_37(L2_38, L3_39)
  L2_38 = string
  L2_38 = L2_38.byte
  L3_39 = L1_37
  L4_40 = 1
  L2_38 = L2_38(L3_39, L4_40)
  if L2_38 == 85 then
    L2_38 = A0_36 + 40432
    L3_39 = ReadPointer32
    L4_40 = L2_38
    L3_39 = L3_39(L4_40)
    L4_40 = _UPVALUE0_
    L5_41 = L3_39
    return L4_40(L5_41)
  end
  L2_38 = string
  L2_38 = L2_38.byte
  L3_39 = L1_37
  L4_40 = 1
  L2_38 = L2_38(L3_39, L4_40)
  if L2_38 == 139 then
    L2_38 = A0_36 - 565
    L3_39 = Kernel
    L3_39 = L3_39.GetMemoryAsString
    L4_40 = L2_38
    L5_41 = 2
    L3_39 = L3_39(L4_40, L5_41)
    if L3_39 == nil then
      L4_40 = nil
      return L4_40
    end
    L4_40 = string
    L4_40 = L4_40.byte
    L5_41 = L3_39
    L6_42 = 1
    L4_40 = L4_40(L5_41, L6_42)
    if L4_40 == 139 then
      L4_40 = string
      L4_40 = L4_40.byte
      L5_41 = L3_39
      L6_42 = 2
      L4_40 = L4_40(L5_41, L6_42)
      if L4_40 == 21 then
        L4_40 = ReadPointer32
        L5_41 = L2_38 + 2
        L4_40 = L4_40(L5_41)
        L5_41 = ReadPointer32
        L6_42 = L4_40
        L5_41 = L5_41(L6_42)
        L6_42 = _UPVALUE0_
        L7_43 = L5_41
        return L6_42(L7_43)
      end
    end
    L4_40 = A0_36 - 560
    L5_41 = Kernel
    L5_41 = L5_41.GetMemoryAsString
    L6_42 = L4_40
    L7_43 = 2
    L5_41 = L5_41(L6_42, L7_43)
    if L5_41 == nil then
      L6_42 = nil
      return L6_42
    end
    L6_42 = string
    L6_42 = L6_42.byte
    L7_43 = L5_41
    L6_42 = L6_42(L7_43, 1)
    if L6_42 == 139 then
      L6_42 = string
      L6_42 = L6_42.byte
      L7_43 = L5_41
      L6_42 = L6_42(L7_43, 2)
      if L6_42 == 13 then
        L6_42 = ReadPointer32
        L7_43 = L4_40 + 2
        L6_42 = L6_42(L7_43)
        L7_43 = ReadPointer32
        L7_43 = L7_43(L6_42)
        return _UPVALUE0_(L7_43)
      end
    end
  end
  L2_38 = nil
  return L2_38
end
L3_3 = nil
L19_19 = L5_5()
for L7_7, L8_8 in L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L5_5()) do
  L9_9 = L8_8.ParseDeviceChain
  L9_9 = L9_9()
  for L13_13 in L10_10(L11_11) do
    L14_14 = tonumber
    L15_15 = L13_13.ObjectAddress
    L14_14 = L14_14(L15_15)
    L14_14 = L14_14 + 40
    L15_15 = ReadPointer32
    L16_16 = L14_14
    L15_15 = L15_15(L16_16)
    if L15_15 ~= 0 then
      L16_16 = ReadPointer32
      L17_17 = L15_15 + 4
      L16_16 = L16_16(L17_17)
      L17_17 = L13_13.ObjectAddress
      if L16_16 == L17_17 then
        L17_17 = ReadPointer32
        L18_18 = L15_15 + 8
        L17_17 = L17_17(L18_18)
        L18_18 = ReadPointer32
        L19_19 = L17_17 + 8
        L18_18 = L18_18(L19_19)
        L19_19 = ReadPointer32
        L19_19 = L19_19(L18_18 + 56)
        if L19_19 and not Kernel.GetModuleForAddress(L19_19) then
          L3_3 = Kernel.RkPattScan(L19_19)
          if L3_3 then
            if string.find(L3_3.DetectionName, "Sirefef", 1, true) then
              if L2_2(L19_19) then
                L3_3.DetectionInfo = L2_2(L19_19)
              end
            else
              L3_3 = nil
            end
          end
        end
      end
    end
    if L3_3 then
      break
    end
  end
  if L3_3 then
    break
  end
end
if L3_3 then
  return L3_3
end
