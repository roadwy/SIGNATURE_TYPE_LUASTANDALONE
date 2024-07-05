local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9, L8_10, L9_11, L10_12, L11_13, L12_14, L13_15, L14_16, L15_17, L16_18, L17_19, L18_20, L19_21, L20_22, L21_23, L22_24, L23_25, L24_26, L25_27, L26_28
  L0_2 = MpCommon
  L0_2 = L0_2.EnumerateFirmwareEnvironmentVariables
  L0_2 = L0_2()
  if not L0_2 then
    return
  end
  L1_3 = {}
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9
  }
  L4_6 = 805306683
  L5_7 = 1000
  L6_8 = false
  L1_3.fTA = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9
  }
  L4_6 = 805306684
  L5_7 = 1000
  L6_8 = false
  L1_3.roodkcaBdrauGifE = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9
  }
  L4_6 = 805306684
  L5_7 = 1000
  L6_8 = false
  L1_3.EfiGuardBackdoor = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9,
    L8_10
  }
  L4_6 = 805306685
  L5_7 = 100
  L6_8 = false
  L1_3.setup = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9,
    L8_10
  }
  L4_6 = 805306686
  L5_7 = 100
  L6_8 = false
  L1_3.stddefaults = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9
  }
  L4_6 = 805306687
  L5_7 = 100
  L6_8 = false
  L1_3.backdoor = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9
  }
  L4_6 = 805306688
  L5_7 = nil
  L6_8 = false
  L1_3.loaded = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9
  }
  L4_6 = 805306688
  L5_7 = nil
  L6_8 = false
  L1_3.backdoordataaddress = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9,
    L8_10
  }
  L4_6 = 2896396613
  L5_7 = nil
  L6_8 = false
  L1_3["cE!"] = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9,
    L8_10
  }
  L4_6 = 2896396613
  L5_7 = nil
  L6_8 = false
  L1_3.ChgBootSecureBootDisable = L2_4
  L2_4 = {L3_5}
  L3_5 = {
    L4_6,
    L5_7,
    L6_8,
    L7_9,
    L8_10
  }
  L4_6 = 2896396613
  L5_7 = nil
  L6_8 = false
  L1_3.ChgBootChangeLegacy = L2_4
  L2_4 = {}
  L3_5 = {L4_6}
  L4_6 = {
    L5_7,
    L6_8,
    L7_9
  }
  L5_7 = 805306689
  L6_8 = 1000
  L2_4["{26153152-363d-1670-8d94-47a9fa8c4c16}"] = L3_5
  L3_5 = {L4_6}
  L4_6 = {
    L5_7,
    L6_8,
    L7_9
  }
  L5_7 = 805306690
  L6_8 = 1000
  L2_4["{8be4df61-93ca-11d2-aa0d-00e098302288}"] = L3_5
  L3_5 = {}
  function L4_6(A0_29)
    local L1_30, L2_31, L3_32, L4_33, L5_34, L6_35, L7_36
    L1_30 = A0_29[1]
    L2_31 = A0_29[2]
    L3_32 = A0_29[3]
    L4_33 = A0_29[4]
    L5_34 = A0_29[5]
    L6_35 = A0_29[6]
    L7_36 = A0_29[7]
    return L1_30, L2_31, L3_32, L4_33, L5_34, L6_35, L7_36
  end
  parseUefiEnvVarSig = L4_6
  function L4_6(A0_37, A1_38, A2_39, A3_40)
    local L4_41, L5_42
    L4_41 = "uefienvvar"
    L5_42 = string
    L5_42 = L5_42.format
    L5_42 = L5_42("%s:%s", A0_37, A1_38)
    _UPVALUE0_[A0_37] = true
    if A3_40 then
      MpDetection.ReportResource(L4_41, L5_42, A2_39, false)
    else
      MpCommon.ReportLowfiEx(L5_42, A2_39, L4_41)
    end
  end
  reportUefiEnvVar = L4_6
  L4_6 = true
  L5_7 = false
  L6_8 = true
  for L10_12, L11_13 in L7_9(L8_10) do
    L12_14 = L11_13.VarName
    L13_15 = L11_13.VarGuid
    if L12_14 and L13_15 then
      L14_16 = string
      L14_16 = L14_16.lower
      L14_16 = L14_16(L15_17)
      L12_14 = L14_16
      L14_16 = string
      L14_16 = L14_16.lower
      L14_16 = L14_16(L15_17)
      L13_15 = L14_16
      L14_16 = L1_3[L12_14]
      if L14_16 then
        for L18_20, L19_21 in L15_17(L16_18) do
          L20_22 = parseUefiEnvVarSig
          L21_23 = L19_21
          L26_28 = L20_22(L21_23)
          if L20_22 and (not L21_23 or MpCommon.IsSampled(L21_23, L4_6, L5_7, L6_8)) and (not L23_25 or L23_25 == L13_15) and (not L24_26 or crypto.bitand(L11_13.VarAttributes, L24_26) == L24_26) and (not L25_27 or L25_27 == L11_13.VarFullValueSize) and (not L26_28 or string.find(L11_13.VarValue, L26_28)) then
            reportUefiEnvVar(L13_15, L11_13.VarName, L20_22, L22_24)
            break
          end
        end
      elseif not L15_17 then
        if L15_17 then
          for L19_21, L20_22 in L16_18(L17_19) do
            L21_23 = parseUefiEnvVarSig
            L22_24 = L20_22
            L23_25 = L21_23(L22_24)
            if L21_23 then
              if L22_24 then
                L24_26 = MpCommon
                L24_26 = L24_26.IsSampled
                L25_27 = L22_24
                L26_28 = L4_6
                L24_26 = L24_26(L25_27, L26_28, L5_7, L6_8)
              elseif L24_26 then
                L24_26 = reportUefiEnvVar
                L25_27 = L13_15
                L26_28 = L11_13.VarName
                L24_26(L25_27, L26_28, L21_23, L23_25)
              end
            end
          end
        end
      end
    end
  end
end
ScanAllUefiEnvVars = L0_0
function L0_0()
  local L0_43
  L0_43 = -1
  if versioning.GetEngineBuild() >= 16934 then
    L0_43, _ = MpCommon.GetFirmwareEnvironmentVariable("MpNonExistentUefiVarName", "{0718a447-42c8-4591-9c76-b55112ef2430}", 32)
  end
  return L0_43 == 203
end
IsUefiEnvVarScanSupported = L0_0
function L0_0()
  local L0_44, L1_45
  L0_44 = sysio
  L0_44 = L0_44.RegOpenKey
  L1_45 = "hklm\\Hardware\\Description\\System\\Bios"
  L0_44 = L0_44(L1_45)
  if not L0_44 then
    L1_45 = true
    return L1_45
  end
  L1_45 = sysio
  L1_45 = L1_45.GetRegValueAsString
  L1_45 = L1_45(L0_44, "BIOSVendor")
  if L1_45 and string.lower(L1_45) == "hp" then
    return true
  end
  L1_45 = sysio.GetRegValueAsString(L0_44, "BaseBoardManufacturer")
  if L1_45 and string.lower(L1_45) == "hp" then
    return true
  end
  L1_45 = sysio.GetRegValueAsString(L0_44, "SystemManufacturer")
  if L1_45 and string.lower(L1_45) == "hp" then
    return true
  end
  return false
end
IsUefiEnvVarScanExcluded = L0_0
function L0_0()
  if IsUefiEnvVarScanSupported() and not IsUefiEnvVarScanExcluded() then
    ScanAllUefiEnvVars()
  end
end
Infrastructure_ScanUefiEnvironmentVariables = L0_0
