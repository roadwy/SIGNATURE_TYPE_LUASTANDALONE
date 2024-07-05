local L0_0, L1_1, L2_2
function L0_0(A0_3)
  if string.find(A0_3, "->", 1, true) ~= nil and 1 < string.find(A0_3, "->", 1, true) then
    return string.sub(A0_3, 1, string.find(A0_3, "->", 1, true) - 1)
  end
  return A0_3
end
FixArchivePath = L0_0
function L0_0(A0_4)
  local L1_5
  L1_5 = string
  L1_5 = L1_5.reverse
  L1_5 = L1_5(A0_4)
  if not string.find(L1_5, "\\", 1, true) or string.find(L1_5, "\\", 1, true) == 1 then
    return A0_4
  end
  return string.reverse(string.sub(L1_5, 1, string.find(L1_5, "\\", 1, true) - 1))
end
ExtractFileName = L0_0
function L0_0()
  local L0_6, L1_7, L2_8, L3_9, L4_10, L5_11, L6_12, L7_13
  L0_6 = Remediation
  L0_6 = L0_6.Threat
  L0_6 = L0_6.Resources
  L0_6 = #L0_6
  if L0_6 == 1 then
    L0_6 = string
    L0_6 = L0_6.match
    L1_7 = Remediation
    L1_7 = L1_7.Threat
    L1_7 = L1_7.Name
    L0_6 = L0_6(L1_7, L2_8)
    if L0_6 then
      L0_6 = string
      L0_6 = L0_6.lower
      L1_7 = Remediation
      L1_7 = L1_7.Threat
      L1_7 = L1_7.Resources
      L1_7 = L1_7[1]
      L1_7 = L1_7.Path
      L0_6 = L0_6(L1_7)
      L1_7 = string
      L1_7 = L1_7.match
      L1_7 = L1_7(L2_8, L3_9)
      if not L1_7 then
        L1_7 = string
        L1_7 = L1_7.match
        L1_7 = L1_7(L2_8, L3_9)
      elseif L1_7 then
        L1_7 = bitand
        L1_7 = L1_7(L2_8, L3_9)
        if 0 ~= L1_7 then
          L1_7 = Remediation
          L1_7 = L1_7.SetRemovalPolicy
          L1_7(L2_8)
          L1_7 = true
          return L1_7
        end
      end
      L1_7 = ExtractFileName
      L7_13 = L2_8(L3_9)
      L1_7 = L1_7(L2_8, L3_9, L4_10, L5_11, L6_12, L7_13, L2_8(L3_9))
      L7_13 = L3_9()
      for L5_11, L6_12 in L2_8(L3_9, L4_10, L5_11, L6_12, L7_13, L3_9()) do
        L7_13 = sysio
        L7_13 = L7_13.GetCommandLineFromService
        L7_13 = L7_13(L6_12.ServiceName)
        if not L7_13 then
          return false
        end
        if string.match(string.lower(L7_13), L1_7) then
          return false
        end
      end
    end
  end
  L0_6 = bitand
  L1_7 = Remediation
  L1_7 = L1_7.Threat
  L1_7 = L1_7.RemovalPolicy
  L0_6 = L0_6(L1_7, L2_8)
  if 0 ~= L0_6 then
    L0_6 = Remediation
    L0_6 = L0_6.SetRemovalPolicy
    L1_7 = Remediation
    L1_7 = L1_7.Threat
    L1_7 = L1_7.RemovalPolicy
    L1_7 = L1_7 - 256
    L0_6(L1_7)
    L0_6 = true
    return L0_6
  end
  L0_6 = false
  return L0_6
end
CheckAllowDriverDelete = L0_0
function L0_0(A0_14)
  local L1_15, L2_16, L3_17, L4_18, L5_19
  if not A0_14 then
    L1_15 = nil
    return L1_15
  end
  L1_15 = {}
  for L5_19 = 1, L3_17(L4_18) do
    L1_15[L5_19] = string.byte(A0_14, L5_19)
  end
  return L1_15
end
StringToBytes = L0_0
function L0_0(A0_20)
  local L1_21
  if not A0_20 then
    L1_21 = nil
    return L1_21
  end
  L1_21 = {}
  for _FORV_5_ = 1, #A0_20 do
    L1_21[_FORV_5_] = string.char(A0_20[_FORV_5_])
  end
  return _FOR_.concat(L1_21)
end
BytesToString = L0_0
function L0_0()
  local L0_22, L1_23, L2_24, L3_25, L4_26, L5_27
  L0_22 = sysio
  L0_22 = L0_22.ExpandFilePath
  L0_22 = L0_22(L1_23)
  if not L0_22 then
    return L1_23
  end
  for L4_26, L5_27 in L1_23(L2_24) do
    if not string.find(L5_27, "%%SystemRoot%%") then
      return L5_27
    end
  end
  return L1_23
end
GetSystemRootPath = L0_0
function L0_0(A0_28, A1_29)
  A0_28 = FixArchivePath(A0_28)
  if sysio.ReadFile(A0_28, 0, 2) ~= "MZ" then
    return false, 191
  end
  if sysio.WriteFile(A0_28, 0, A1_29) ~= string.len(A1_29) then
    return false, 29
  end
  return true, 0
end
SafeWriteFile = L0_0
function L0_0(A0_30)
  local L1_31, L2_32, L3_33
  L1_31 = 0
  L2_32 = 0
  L3_33 = string
  L3_33 = L3_33.len
  L3_33 = L3_33(A0_30)
  for _FORV_7_ = 0, crypto.shr32(L3_33, 1) - 1 do
    L1_31 = L1_31 + readu16(A0_30, _FORV_7_ * 2) + L2_32
    if L1_31 >= 65536 then
      L2_32 = 1
    else
      L2_32 = 0
    end
    L1_31 = bitand(L1_31, 65535)
  end
  if bitand(L3_33, 1) ~= 0 then
    L1_31 = L1_31 + readu8(A0_30, L3_33 - 1)
  end
  return L3_33 + L1_31 + L2_32
end
CalculatePEChecksum = L0_0
function L0_0(A0_34)
  local L1_35, L2_36, L3_37, L4_38
  L1_35 = string
  L1_35 = L1_35.len
  L2_36 = A0_34
  L1_35 = L1_35(L2_36)
  if L1_35 < 1024 then
    L2_36 = false
    return L2_36
  end
  L2_36 = readu16
  L3_37 = A0_34
  L4_38 = 0
  L2_36 = L2_36(L3_37, L4_38)
  if L2_36 ~= 23117 then
    L2_36 = false
    return L2_36
  end
  L2_36 = readu32
  L3_37 = A0_34
  L4_38 = 60
  L2_36 = L2_36(L3_37, L4_38)
  if not (L2_36 < 64) and not (L1_35 <= L2_36) then
    L3_37 = L1_35 - 512
  elseif L2_36 > L3_37 then
    L3_37 = false
    return L3_37
  end
  L3_37 = readu16
  L4_38 = A0_34
  L3_37 = L3_37(L4_38, L2_36)
  if L3_37 ~= 17744 then
    L3_37 = false
    return L3_37
  end
  L3_37 = readu16
  L4_38 = A0_34
  L3_37 = L3_37(L4_38, L2_36 + 4)
  if L3_37 ~= 332 then
    L3_37 = false
    return L3_37
  end
  L3_37 = readu16
  L4_38 = A0_34
  L3_37 = L3_37(L4_38, L2_36 + 92)
  if L3_37 ~= 1 then
    L3_37 = false
    return L3_37
  end
  L3_37 = readu32
  L4_38 = A0_34
  L3_37 = L3_37(L4_38, L2_36 + 88)
  L4_38 = string
  L4_38 = L4_38.sub
  L4_38 = L4_38(A0_34, 1, L2_36 + 88)
  L4_38 = L4_38 .. "\000\000\000\000" .. string.sub(A0_34, L2_36 + 88 + 4 + 1)
  if CalculatePEChecksum(L4_38) ~= L3_37 then
    return false
  end
  return true
end
ValidateDecryptedDriver = L0_0
function L0_0(A0_39)
  local L1_40, L2_41, L3_42, L4_43, L5_44, L6_45, L7_46, L8_47, L9_48, L10_49, L11_50, L12_51, L13_52, L14_53, L15_54, L16_55, L17_56, L18_57, L19_58, L20_59
  L1_40 = SetLuaInstrLimit
  L2_41 = crypto
  L2_41 = L2_41.shl64
  L3_42 = 1
  L4_43 = 24
  L20_59 = L2_41(L3_42, L4_43)
  L1_40(L2_41, L3_42, L4_43, L5_44, L6_45, L7_46, L8_47, L9_48, L10_49, L11_50, L12_51, L13_52, L14_53, L15_54, L16_55, L17_56, L18_57, L19_58, L20_59, L2_41(L3_42, L4_43))
  L1_40 = GetSystemRootPath
  L1_40 = L1_40()
  if not L1_40 then
    L2_41 = false
    L3_42 = 0
    return L2_41, L3_42
  end
  L2_41 = sysio
  L2_41 = L2_41.GetFileFsVolumeInformation
  L3_42 = L1_40
  L2_41 = L2_41(L3_42)
  if not L2_41 then
    L3_42 = false
    L4_43 = 0
    return L3_42, L4_43
  end
  L3_42 = sysio
  L3_42 = L3_42.RegOpenKey
  L4_43 = "HKLM\\SYSTEM\\Setup\\Pid"
  L3_42 = L3_42(L4_43)
  if not L3_42 then
    L4_43 = false
    L5_44 = 0
    return L4_43, L5_44
  end
  L4_43 = sysio
  L4_43 = L4_43.RegQueryInfoKey
  L5_44 = L3_42
  L4_43 = L4_43(L5_44)
  if not L4_43 then
    L5_44 = false
    L6_45 = 0
    return L5_44, L6_45
  end
  L5_44 = Int64ToByteString
  L6_45 = L2_41.VolumeCreationTime
  L5_44 = L5_44(L6_45)
  L6_45 = Int64ToByteString
  L7_46 = L4_43.LastWriteTime
  L6_45 = L6_45(L7_46)
  L7_46 = crypto
  L7_46 = L7_46.MD5Buffer
  L8_47 = L5_44
  L9_48 = 0
  L10_49 = string
  L10_49 = L10_49.len
  L11_50 = L5_44
  L20_59 = L10_49(L11_50)
  L7_46 = L7_46(L8_47, L9_48, L10_49, L11_50, L12_51, L13_52, L14_53, L15_54, L16_55, L17_56, L18_57, L19_58, L20_59, L10_49(L11_50))
  L8_47 = bitxor
  L9_48 = bitxor
  L10_49 = bitxor
  L11_50 = readu32
  L12_51 = L7_46
  L11_50 = L11_50(L12_51, L13_52)
  L12_51 = readu32
  L20_59 = L12_51(L13_52, L14_53)
  L10_49 = L10_49(L11_50, L12_51, L13_52, L14_53, L15_54, L16_55, L17_56, L18_57, L19_58, L20_59, L12_51(L13_52, L14_53))
  L11_50 = readu32
  L12_51 = L7_46
  L20_59 = L11_50(L12_51, L13_52)
  L9_48 = L9_48(L10_49, L11_50, L12_51, L13_52, L14_53, L15_54, L16_55, L17_56, L18_57, L19_58, L20_59, L11_50(L12_51, L13_52))
  L10_49 = readu32
  L11_50 = L7_46
  L12_51 = 12
  L20_59 = L10_49(L11_50, L12_51)
  L8_47 = L8_47(L9_48, L10_49, L11_50, L12_51, L13_52, L14_53, L15_54, L16_55, L17_56, L18_57, L19_58, L20_59, L10_49(L11_50, L12_51))
  L9_48 = {
    L10_49,
    L11_50,
    L12_51,
    L13_52,
    L14_53,
    L15_54,
    L16_55,
    L17_56,
    L18_57,
    L19_58,
    L20_59,
    "x",
    "e",
    "d",
    "c",
    "r",
    "f",
    "v",
    "t",
    "g",
    "b",
    "y",
    "h",
    "n",
    "u",
    "j",
    "m",
    "i",
    "k",
    "o",
    "l",
    "p"
  }
  L10_49 = "e"
  L11_50 = "a"
  L12_51 = "o"
  L16_55 = "q"
  L17_56 = "a"
  L18_57 = "z"
  L19_58 = "w"
  L20_59 = "s"
  L10_49 = crypto
  L10_49 = L10_49.MD5Buffer
  L11_50 = L6_45
  L12_51 = 0
  L20_59 = L13_52(L14_53)
  L10_49 = L10_49(L11_50, L12_51, L13_52, L14_53, L15_54, L16_55, L17_56, L18_57, L19_58, L20_59, L13_52(L14_53))
  L11_50 = readu64
  L12_51 = L10_49
  L11_50 = L11_50(L12_51, L13_52)
  L12_51 = ""
  for L16_55 = 1, 8 do
    L17_56 = L12_51
    L18_57 = bitand
    L19_58 = L11_50
    L20_59 = 31
    L18_57 = L18_57(L19_58, L20_59)
    L18_57 = L18_57 + 1
    L18_57 = L9_48[L18_57]
    L12_51 = L17_56 .. L18_57
    L17_56 = crypto
    L17_56 = L17_56.shr64
    L18_57 = L11_50
    L19_58 = 5
    L17_56 = L17_56(L18_57, L19_58)
    L11_50 = L17_56
  end
  L12_51 = L13_52
  L16_55 = bitand
  L17_56 = L8_47
  L18_57 = 65535
  L16_55 = L16_55(L17_56, L18_57)
  L17_56 = crypto
  L17_56 = L17_56.shr32
  L18_57 = L8_47
  L19_58 = 16
  L20_59 = L17_56(L18_57, L19_58)
  L20_59 = L15_54(L16_55, L17_56, L18_57, L19_58, L20_59, L17_56(L18_57, L19_58))
  L16_55 = "\\%u\\L\\%s"
  L16_55 = L8_47
  L17_56 = L12_51
  if L15_54 >= 75184 then
    L16_55 = L13_52
    L17_56 = 0
    L15_54(L16_55, L17_56)
  end
  L16_55 = L14_53
  if not L15_54 or L15_54 > 1048576 then
    L16_55 = false
    L17_56 = 1462
    return L16_55, L17_56
  end
  L16_55 = StringToBytes
  L17_56 = sysio
  L17_56 = L17_56.ReadFileRaw
  L18_57 = L14_53
  L19_58 = 0
  L20_59 = L15_54
  L20_59 = L17_56(L18_57, L19_58, L20_59)
  L16_55 = L16_55(L17_56, L18_57, L19_58, L20_59, L17_56(L18_57, L19_58, L20_59))
  if not L16_55 then
    L17_56 = false
    L18_57 = 30
    return L17_56, L18_57
  end
  L17_56 = {}
  L18_57 = {}
  L19_58 = 0
  L20_59 = 0
  L7_46 = StringToBytes(L7_46)
  for _FORV_24_ = 1, 256 do
    L17_56[_FORV_24_] = _FORV_24_ - 1
  end
  for _FORV_24_ = 1, 256 do
    L20_59 = bitand(L20_59 + L17_56[_FORV_24_] + L7_46[L19_58 + 1], 255)
    L17_56[_FORV_24_] = L17_56[L20_59 + 1]
    L17_56[L20_59 + 1] = L17_56[_FORV_24_]
    L19_58 = bitand(L19_58 + 1, 15)
  end
  for _FORV_24_ = 1, 256 do
    L18_57[L17_56[_FORV_24_] + 1] = _FORV_24_ - 1
  end
  for _FORV_24_ = 1, L15_54 do
    L16_55[_FORV_24_] = L18_57[L16_55[_FORV_24_] + 1]
  end
  L16_55 = BytesToString(L16_55)
  if not ValidateDecryptedDriver(L16_55) then
    return false, 193
  end
  return SafeWriteFile(A0_39, L16_55)
end
RestoreDriverByDecryption = L0_0
L0_0 = false
L1_1 = 0
if L2_2 >= 75085 then
  if L2_2 ~= "Trojan:WinNT/Sirefef.J" then
  elseif L2_2 == "Trojan:WinNT/Sirefef.N" then
    if L2_2 ~= 0 then
      for _FORV_5_, _FORV_6_ in L2_2(Remediation.Threat.Resources) do
        if _FORV_6_.Schema == "file" and _FORV_6_.Path ~= "" then
          L0_0, L1_1 = RestoreDriverByDecryption(_FORV_6_.Path)
          if L0_0 then
            Remediation.SetRemovalPolicy(Remediation.Threat.RemovalPolicy - 256)
          end
        end
      end
    end
  end
end
if Info.EngineVersion > 74598 and not Remediation.Threat.Offline and not L0_0 then
end
if not L2_2 and L1_1 ~= 0 then
  Remediation.SetError(L1_1)
end
