local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6, L5_7
  L0_2 = sysio
  L0_2 = L0_2.GetObjectDir
  L1_3 = "\\Device"
  L0_2 = L0_2(L1_3)
  L1_3 = 0
  for L5_7, _FORV_6_ in L2_4(L3_5) do
    if string.find(L5_7, "NtSecureSys", 1, true) == 1 then
      L1_3 = L1_3 + 1
      break
    end
  end
  if L1_3 == 1 then
    return L2_4
  end
  return L2_4
end
NecursDeviceTrigger = L0_0
function L0_0(A0_8)
  local L1_9, L2_10, L3_11, L4_12, L5_13, L6_14, L7_15, L8_16, L9_17, L10_18, L11_19
  L1_9 = "HKLM\\System\\CurrentControlSet\\Services"
  L2_10 = sysio
  L2_10 = L2_10.RegOpenKeyDiff
  L3_11 = L1_9
  L2_10 = L2_10(L3_11)
  if not L2_10 then
    L3_11 = false
    return L3_11, L4_12
  end
  L3_11 = sysio
  L3_11 = L3_11.RegEnumKeys
  L3_11 = L3_11(L4_12)
  if not L3_11 then
    return L4_12, L5_13
  end
  for L7_15, L8_16 in L4_12(L5_13) do
    L9_17 = string
    L9_17 = L9_17.find
    L10_18 = L8_16
    L11_19 = "^%x%x%x%x%x%x%x%x%x%x%x%x"
    L9_17 = L9_17(L10_18, L11_19)
    if L9_17 then
      L9_17 = sysio
      L9_17 = L9_17.RegOpenKey
      L10_18 = L1_9
      L11_19 = "\\"
      L10_18 = L10_18 .. L11_19 .. L8_16
      L9_17 = L9_17(L10_18)
      if not L9_17 then
        L10_18 = sysio
        L10_18 = L10_18.RegOpenSubkey
        L11_19 = L2_10
        L10_18 = L10_18(L11_19, L8_16)
        L9_17 = L10_18
        if not L9_17 then
          L10_18 = false
          L11_19 = 1011
          return L10_18, L11_19
        end
        L10_18 = sysio
        L10_18 = L10_18.GetRegValueAsString
        L11_19 = L9_17
        L10_18 = L10_18(L11_19, "DisplayName")
        if L10_18 ~= "syshost.exe" then
          L11_19 = false
          return L11_19, 1010
        end
        L11_19 = sysio
        L11_19 = L11_19.GetRegValueAsString
        L11_19 = L11_19(L9_17, "ImagePath")
        L11_19 = SystemPathToDosName(L11_19)
        if sysio.ReadFileRaw(L11_19, 0, 2) ~= "MZ" then
          return false, 191
        end
        if not sysio.GetLastResult().Success then
          return false, 193
        end
        if sysio.ReadPEHeaderRaw(L11_19).DataDirectory[3].RVA == 0 then
          A0_8[1] = L8_16
          A0_8[2] = L11_19
          return true, 0
        end
      else
        L10_18 = false
        L11_19 = 1243
        return L10_18, L11_19
      end
    end
  end
  return L4_12, L5_13
end
NecursServiceScan = L0_0
function L0_0(A0_20)
  local L1_21, L2_22, L3_23, L4_24, L5_25, L6_26, L7_27, L8_28, L9_29
  L1_21 = string
  L1_21 = L1_21.find
  L2_22 = A0_20
  L3_23 = "\\SystemRoot\\"
  L4_24 = 1
  L2_22 = L1_21(L2_22, L3_23, L4_24, L5_25)
  if L2_22 ~= nil and L2_22 > 1 then
    L3_23 = string
    L3_23 = L3_23.sub
    L4_24 = A0_20
    L3_23 = L3_23(L4_24, L5_25)
    L4_24 = sysio
    L4_24 = L4_24.ExpandFilePath
    L4_24 = L4_24(L5_25)
    if not L4_24 then
      return A0_20
    end
    for L8_28, L9_29 in L5_25(L6_26) do
      if not string.find(L9_29, "%%") then
        L3_23 = L9_29 .. L3_23
        return L3_23
      end
    end
  end
  return A0_20
end
SystemPathToDosName = L0_0
function L0_0()
  local L0_30, L1_31, L2_32, L3_33, L4_34, L5_35
  L0_30 = sysio
  L0_30 = L0_30.ExpandFilePath
  L0_30 = L0_30(L1_31)
  if not L0_30 then
    return L1_31
  end
  for L4_34, L5_35 in L1_31(L2_32) do
    if not string.find(L5_35, "%%") then
      L5_35 = L5_35 .. "\\System32\\drivers\\"
      return L5_35
    end
  end
  return L1_31
end
GetSystemDriverPath = L0_0
function L0_0(A0_36, A1_37)
  local L2_38
  L2_38 = sysio
  L2_38 = L2_38.ReadFileRaw
  L2_38 = L2_38(A0_36, A1_37, 2)
  if L2_38 == nil then
    return nil
  end
  L2_38 = readu16(L2_38, 0)
  return L2_38
end
ReadFilePointer16 = L0_0
function L0_0(A0_39, A1_40)
  local L2_41
  L2_41 = sysio
  L2_41 = L2_41.ReadFileRaw
  L2_41 = L2_41(A0_39, A1_40, 4)
  if L2_41 == nil then
    return nil
  end
  L2_41 = readu32(L2_41, 0)
  return L2_41
end
ReadFilePointer32 = L0_0
function L0_0(A0_42)
  local L1_43
  L1_43 = Kernel
  L1_43 = L1_43.GetMemoryAsString
  L1_43 = L1_43(A0_42, 2)
  if L1_43 == nil then
    return 0
  end
  return (readu16(L1_43, 0))
end
ReadPointer16 = L0_0
function L0_0(A0_44)
  local L1_45
  L1_45 = Kernel
  L1_45 = L1_45.GetMemoryAsString
  L1_45 = L1_45(A0_44, 4)
  if L1_45 == nil then
    return 0
  end
  return (readu32(L1_45, 0))
end
ReadPointer32 = L0_0
function L0_0(A0_46)
  local L1_47
  L1_47 = Kernel
  L1_47 = L1_47.GetMemoryAsString
  L1_47 = L1_47(A0_46, 8)
  if L1_47 == nil then
    return 0
  end
  return (readu64(L1_47, 0))
end
ReadPointer64 = L0_0
function L0_0(A0_48)
  local L1_49, L2_50, L3_51, L4_52, L5_53, L6_54
  if A0_48 == 0 then
    L1_49 = nil
    return L1_49
  end
  L1_49 = A0_48
  L2_50 = nil
  for L6_54 = 1, 10 do
    if L1_49 == 0 then
      return A0_48
    else
      L2_50 = ReadPointer32(L1_49 + 176)
      if L2_50 == 0 or L2_50 == nil then
        break
      end
      L1_49 = ReadPointer32(L2_50 + 24)
      if L1_49 ~= 0 and L1_49 ~= nil then
        A0_48 = L1_49
      end
    end
  end
  return L3_51
end
GetLowestDevice32 = L0_0
function L0_0(A0_55)
  local L1_56, L2_57, L3_58, L4_59, L5_60, L6_61
  if A0_55 == 0 then
    L1_56 = nil
    return L1_56
  end
  L1_56 = A0_55
  L2_57 = nil
  for L6_61 = 1, 10 do
    if L1_56 == 0 then
      return A0_55
    else
      L2_57 = ReadPointer64(L1_56 + 312)
      if L2_57 == 0 or L2_57 == nil then
        break
      end
      L1_56 = ReadPointer64(L2_57 + 48)
      if L1_56 ~= 0 and L1_56 ~= nil then
        A0_55 = L1_56
      end
    end
  end
  return L3_58
end
GetLowestDevice64 = L0_0
function L0_0(A0_62)
  local L1_63, L2_64, L3_65, L4_66, L5_67, L6_68
  if A0_62 == nil then
    L1_63 = nil
    return L1_63
  end
  L1_63 = {}
  L2_64 = 0
  for L6_68 = 1, L4_66(L5_67) do
    if string.byte(A0_62, L6_68) ~= 0 then
      L1_63[L2_64] = string.char(string.byte(A0_62, L6_68))
      L2_64 = L2_64 + 1
    end
  end
  return L3_65(L4_66)
end
MultiByteToChar = L0_0
