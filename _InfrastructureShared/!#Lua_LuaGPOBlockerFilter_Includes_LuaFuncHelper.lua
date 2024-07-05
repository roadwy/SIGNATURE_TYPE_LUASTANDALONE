local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L2_2 = L0_0
L1_1 = L0_0.lower
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.match
L3_3 = "^(.*)\\gpt.ini$"
L1_1 = L1_1(L2_2, L3_3)
L3_3 = L0_0
L2_2 = L0_0.lower
L2_2 = L2_2(L3_3)
L3_3 = L2_2
L2_2 = L2_2.match
L4_4 = "^\\device\\mup\\.+\\sysvol\\.+\\policies\\{(%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x)}\\gpt.ini$"
L2_2 = L2_2(L3_3, L4_4)
function L3_3(A0_13)
  local L1_14, L2_15, L3_16, L4_17, L5_18, L6_19, L7_20, L8_21, L9_22, L10_23, L11_24
  L1_14 = pcall
  L2_15 = parseRegistryPol
  L3_16 = A0_13
  L2_15 = L1_14(L2_15, L3_16)
  if not L1_14 then
    L3_16 = {}
    L3_16.error = L2_15
    return L3_16
  end
  L3_16 = #L2_15
  if L3_16 == 0 then
    L3_16 = nil
    return L3_16
  end
  L3_16 = {}
  L4_17 = "^SOFTWARE\\Microsoft\\Windows Defender\\"
  L5_18 = "^SOFTWARE\\Policies\\Microsoft\\Windows Defender\\"
  for L9_22, L10_23 in L6_19(L7_20) do
    L11_24 = L10_23.key
    L11_24 = L11_24.find
    L11_24 = L11_24(L11_24, L4_17)
    if not L11_24 then
      L11_24 = L10_23.key
      L11_24 = L11_24.find
      L11_24 = L11_24(L11_24, L5_18)
    elseif L11_24 then
      L11_24 = L10_23.data
      if L10_23.typ == 1 then
        L11_24 = mp.utf16to8(L11_24)
      elseif L10_23.typ == 4 then
        L11_24 = mp.readu_u32(L11_24, 1)
      end
      L3_16[#L3_16 + 1] = {
        key = L10_23.key,
        name = MpCommon.NormalizeString(L10_23.value, "CmdLineNormalizationStandard"),
        value = L11_24
      }
      if L10_23.key:find("Exclusions\\Paths") and MpCommon.StringRegExpSearch("(c:?\\\\*\\*?%?$)", L11_24) then
        AppendToRollingQueue("gpo_broad_exclusion", string.lower(L11_24), true, 94608000, 100)
      end
      if L10_23.key:find("Exclusions\\Extensions") and MpCommon.StringRegExpSearch("(([.*]+)?(exe|dll|bat|ps1)$)", L11_24) then
        AppendToRollingQueue("gpo_broad_exclusion", string.lower(L11_24), true, 94608000, 100)
      end
    end
  end
  if L6_19 == 0 then
    return L6_19
  end
  return L3_16
end
function L4_4(A0_25)
  local L1_26, L2_27, L3_28, L4_29, L5_30
  L1_26 = sysio
  L1_26 = L1_26.GetFileSize
  L2_27 = A0_25
  L1_26 = L1_26(L2_27)
  L2_27 = sysio
  L2_27 = L2_27.GetLastResult
  L2_27 = L2_27()
  L2_27 = L2_27.Success
  if not L2_27 then
    L2_27 = nil
    return L2_27
  end
  if L1_26 > 65536 then
    L2_27 = 65536
    L1_26 = L2_27 or L1_26
  end
  L2_27 = sysio
  L2_27 = L2_27.ReadFile
  L3_28 = A0_25
  L4_29 = 0
  L5_30 = L1_26
  L2_27 = L2_27(L3_28, L4_29, L5_30)
  L3_28 = sysio
  L3_28 = L3_28.GetLastResult
  L3_28 = L3_28()
  L3_28 = L3_28.Success
  if not L3_28 then
    L3_28 = nil
    return L3_28
  end
  L3_28 = {}
  function L4_29(A0_31, A1_32, A2_33)
    local L3_34, L4_35, L5_36
    L3_34 = "^SOFTWARE\\Microsoft\\Windows Defender\\"
    L4_35 = "^SOFTWARE\\Policies\\Microsoft\\Windows Defender\\"
    if A0_31 == "Properties" then
      L5_36 = A1_32.key
      if L5_36 then
        L5_36 = A1_32.key
        L5_36 = L5_36.find
        L5_36 = L5_36(L5_36, L3_34)
        if not L5_36 then
          L5_36 = A1_32.key
          L5_36 = L5_36.find
          L5_36 = L5_36(L5_36, L4_35)
        elseif L5_36 then
          L5_36 = A1_32.value
          if A1_32.type == "REG_DWORD" then
            L5_36 = tonumber(A1_32.value, 16)
          end
          _UPVALUE0_[#_UPVALUE0_ + 1] = {
            key = A1_32.key,
            name = MpCommon.NormalizeString(A1_32.name, "CmdLineNormalizationStandard"),
            value = L5_36
          }
          if A1_32.key:find("Exclusions\\Paths") and MpCommon.StringRegExpSearch("(c:?\\\\*\\*?%?$)", L5_36) then
            AppendToRollingQueue("gpo_broad_exclusion", string.lower(L5_36), true, 94608000, 100)
          end
          if A1_32.key:find("Exclusions\\Extensions") and MpCommon.StringRegExpSearch("(([.*]+)?(exe|dll|bat|ps1)$)", L5_36) then
            AppendToRollingQueue("gpo_broad_exclusion", string.lower(L5_36), true, 94608000, 100)
          end
        end
      end
    end
  end
  function L5_30()
    local L0_37, L1_38
  end
  if not pcall(parseXML, L2_27, L4_29, L5_30) then
    L3_28.error = pcall(parseXML, L2_27, L4_29, L5_30)
  end
  if not next(L3_28) then
    return nil
  end
  return L3_28
end
function L5_5(A0_39)
  local L1_40, L2_41, L3_42, L4_43, L5_44, L6_45, L7_46, L8_47, L9_48, L10_49, L11_50, L12_51, L13_52, L14_53, L15_54, L16_55
  L1_40 = sysio
  L1_40 = L1_40.GetFileSize
  L2_41 = A0_39
  L1_40 = L1_40(L2_41)
  L2_41 = sysio
  L2_41 = L2_41.GetLastResult
  L2_41 = L2_41()
  L2_41 = L2_41.Success
  if not L2_41 then
    L2_41 = nil
    return L2_41
  end
  if L1_40 > 65536 then
    L2_41 = 65536
    L1_40 = L2_41 or L1_40
  end
  L2_41 = sysio
  L2_41 = L2_41.ReadFile
  L3_42 = A0_39
  L4_43 = 0
  L5_44 = L1_40
  L2_41 = L2_41(L3_42, L4_43, L5_44)
  L3_42 = sysio
  L3_42 = L3_42.GetLastResult
  L3_42 = L3_42()
  L3_42 = L3_42.Success
  if not L3_42 then
    L3_42 = nil
    return L3_42
  end
  L3_42, L4_43, L5_44, L6_45, L7_46, L8_47, L9_48, L10_49, L11_50 = nil, nil, nil, nil, nil, nil, nil, nil, nil
  L12_51 = {}
  L13_52 = false
  function L14_53()
    local L0_56, L1_57, L2_58, L3_59, L4_60, L5_61, L6_62, L7_63
    L0_56 = _UPVALUE0_
    if not L0_56 then
      return
    end
    L0_56 = string
    L0_56 = L0_56.format
    L1_57 = "%s %s"
    L2_58 = _UPVALUE0_
    L2_58 = L2_58 or ""
    L0_56 = L0_56(L1_57, L2_58, L3_59)
    if L0_56 ~= "" then
      L1_57 = string
      L1_57 = L1_57.lower
      L2_58 = L0_56
      L1_57 = L1_57(L2_58)
      L2_58 = {
        L3_59,
        L4_60,
        L5_61,
        L6_62,
        L7_63,
        "c:\\windows\\syswow64\\macromed\\flash\\flashplayerupdateservice.exe",
        "\\vgregion.se\\ifr$\\scriptandexec\\ps1\\",
        "\\vgregion.se\\ifr$\\scriptandexec\\exec\\",
        "c:\\windows\\system32\\restartsms.ps1",
        "c:\\windows\\system32\\pgrvpnlogonactions_1_3.ps1"
      }
      L6_62 = "schtasks /change /tn \"\\microsoft\\windows\\certificateservicesclient\\aikcertenrolltask\" /disable"
      L7_63 = "c:\\program files (x86)\\common files\\adobe\\arm\\1.0\\adobearm.exe"
      for L6_62, L7_63 in L3_59(L4_60) do
        if string.find(L7_63, L1_57) then
          _UPVALUE2_ = true
        end
      end
    end
    L1_57 = _UPVALUE2_
    if not L1_57 then
      L1_57 = AppendToRollingQueue
      L2_58 = "gpo_schtasks"
      L6_62 = 300
      L7_63 = 0
      L1_57(L2_58, L3_59, L4_60, L5_61, L6_62, L7_63)
      L1_57 = sysio
      L1_57 = L1_57.CommandLineScan
      L2_58 = L0_56
      L1_57 = L1_57(L2_58, L3_59)
      L2_58 = _UPVALUE4_
      L2_58 = L2_58.match
      L2_58 = L2_58(L3_59, L4_60)
      L2_58 = L2_58 or ""
      L6_62 = {}
      L7_63 = _UPVALUE6_
      L6_62.task_uid = L7_63
      L7_63 = _UPVALUE7_
      L6_62.task_name = L7_63
      L7_63 = _UPVALUE8_
      L6_62.changed_time = L7_63
      L7_63 = MpCommon
      L7_63 = L7_63.NormalizeString
      L7_63 = L7_63(L0_56, "CmdLineNormalizationStandard")
      L6_62.cmdline = L7_63
      L7_63 = L1_57 or false
      L6_62.scan_result = L7_63
      L7_63 = _UPVALUE9_
      if L7_63 then
        L7_63 = MpCommon
        L7_63 = L7_63.NormalizeString
        L7_63 = L7_63(_UPVALUE9_, "CmdLineNormalizationStandard")
      else
        L7_63 = L7_63 or ""
      end
      L6_62.working_directory = L7_63
      L7_63 = crypto
      L7_63 = L7_63.Sha1Buffer
      L7_63 = L7_63(L2_58, 0, #L2_58)
      L6_62.domain = L7_63
      L7_63 = crypto
      L7_63 = L7_63.Sha1Buffer
      L7_63 = L7_63(L3_59, 0, #L3_59)
      L6_62.user = L7_63
      L7_63 = _UPVALUE10_
      L7_63 = L7_63 and true or false
      L6_62.pass = L7_63
      L4_60[L5_61] = L6_62
    end
  end
  function L15_54(A0_64, A1_65, A2_66)
    if A2_66 and A1_65 then
      error("unexpected text in tag with attributes")
    elseif not _UPVALUE0_ then
      if A0_64 == "Task" or A0_64 == "ImmediateTask" then
        _UPVALUE0_ = 1
      elseif A0_64 == "TaskV2" or A0_64 == "ImmediateTaskV2" then
        _UPVALUE0_ = 2
      end
      _UPVALUE1_ = A1_65.uid or ""
      _UPVALUE2_ = A1_65.changed or ""
    elseif _UPVALUE0_ == 1 then
      if A0_64 == "Properties" then
        _UPVALUE3_ = A1_65.appName
        _UPVALUE4_ = A1_65.args
        _UPVALUE5_ = A1_65.name or ""
        _UPVALUE6_ = A1_65.runAs or ""
        _UPVALUE7_ = A1_65.cpassword or ""
        _UPVALUE8_ = A1_65.startIn or ""
      end
    elseif _UPVALUE0_ == 2 then
      if A0_64 == "Properties" then
        _UPVALUE5_ = A1_65.name or ""
        _UPVALUE6_ = A1_65.runAs or ""
        _UPVALUE7_ = A1_65.cpassword or ""
      elseif A0_64 == "Command" then
        _UPVALUE3_ = A2_66
      elseif A0_64 == "Arguments" then
        _UPVALUE4_ = A2_66
      elseif A0_64 == "WorkingDirectory" then
        _UPVALUE8_ = A2_66
      end
    end
  end
  function L16_55(A0_67)
    if not _UPVALUE0_ then
      return
    end
    if _UPVALUE0_ == 1 then
      if A0_67 == "Task" or A0_67 == "ImmediateTask" then
        _UPVALUE1_()
        _UPVALUE2_, _UPVALUE3_ = nil, nil
        _UPVALUE0_ = nil
        _UPVALUE4_ = nil
        _UPVALUE5_ = nil
        _UPVALUE6_ = nil
        _UPVALUE7_ = nil
        _UPVALUE8_ = nil
        _UPVALUE9_ = nil
      end
    elseif _UPVALUE0_ == 2 then
      if A0_67 == "Exec" then
        _UPVALUE1_()
        _UPVALUE2_, _UPVALUE3_ = nil, nil
        _UPVALUE9_ = nil
      elseif A0_67 == "TaskV2" or A0_67 == "ImmediateTaskV2" then
        _UPVALUE0_ = nil
        _UPVALUE4_ = nil
        _UPVALUE5_ = nil
        _UPVALUE6_ = nil
        _UPVALUE7_ = nil
        _UPVALUE8_ = nil
      end
    end
  end
  if not pcall(parseXML, L2_41, L15_54, L16_55) then
    L12_51.error = true
  end
  if not next(L12_51) then
    return nil
  end
  return L12_51
end
L6_6 = {}
L7_7 = {}
L8_8 = {}
L9_9 = L4_4
L10_10 = L1_1
L11_11 = "\\machine\\preferences\\registry\\registry.xml"
L10_10 = L10_10 .. L11_11
L9_9 = L9_9(L10_10)
L8_8.registry = L9_9
L9_9 = L5_5
L10_10 = L1_1
L11_11 = "\\machine\\preferences\\scheduledtasks\\scheduledtasks.xml"
L10_10 = L10_10 .. L11_11
L9_9 = L9_9(L10_10)
L8_8.scheduledtasks = L9_9
L7_7.preferences = L8_8
L8_8 = L3_3
L9_9 = L1_1
L10_10 = "\\machine\\registry.pol"
L9_9 = L9_9 .. L10_10
L8_8 = L8_8(L9_9)
L7_7.registry = L8_8
L6_6.machine = L7_7
L7_7 = {}
L8_8 = {}
L9_9 = L4_4
L10_10 = L1_1
L11_11 = "\\user\\preferences\\registry\\registry.xml"
L10_10 = L10_10 .. L11_11
L9_9 = L9_9(L10_10)
L8_8.registry = L9_9
L9_9 = L5_5
L10_10 = L1_1
L11_11 = "\\user\\preferences\\scheduledtasks\\scheduledtasks.xml"
L10_10 = L10_10 .. L11_11
L9_9 = L9_9(L10_10)
L8_8.scheduledtasks = L9_9
L7_7.preferences = L8_8
L8_8 = L3_3
L9_9 = L1_1
L10_10 = "\\user\\registry.pol"
L9_9 = L9_9 .. L10_10
L8_8 = L8_8(L9_9)
L7_7.registry = L8_8
L6_6.user = L7_7
L7_7 = next
L8_8 = L6_6.machine
L8_8 = L8_8.preferences
L7_7 = L7_7(L8_8)
if not L7_7 then
  L7_7 = L6_6.machine
  L7_7 = L7_7.registry
  if not L7_7 then
    L7_7 = next
    L8_8 = L6_6.user
    L8_8 = L8_8.preferences
    L7_7 = L7_7(L8_8)
    if not L7_7 then
      L7_7 = L6_6.user
      L7_7 = L7_7.registry
    end
  end
elseif L7_7 then
  L7_7 = crypto
  L7_7 = L7_7.Sha1Buffer
  L8_8 = L2_2
  L9_9 = 0
  L10_10 = #L2_2
  L7_7 = L7_7(L8_8, L9_9, L10_10)
  L8_8 = string
  L8_8 = L8_8.format
  L9_9 = "http://gpo.%s"
  L10_10 = L7_7
  L8_8 = L8_8(L9_9, L10_10)
  L9_9 = tonumber
  L10_10 = mp
  L10_10 = L10_10.get_mpattributevalue
  L11_11 = "Lua:GPOVersion"
  L12_12 = L10_10(L11_11)
  L9_9 = L9_9(L10_10, L11_11, L12_12, L10_10(L11_11))
  L10_10 = mp
  L10_10 = L10_10.bitand
  L11_11 = L9_9
  L12_12 = 4294901760
  L10_10 = L10_10(L11_11, L12_12)
  L10_10 = L10_10 / 65536
  L11_11 = mp
  L11_11 = L11_11.bitand
  L12_12 = L9_9
  L11_11 = L11_11(L12_12, 65535)
  L12_12 = {}
  L12_12.SIG_CONTEXT = "LUA_GENERIC"
  L12_12.CONTENT_SOURCE = "GPO"
  L12_12.TAG = "NOLOOKUP"
  L12_12.GPO_USER_VERSION = L10_10
  L12_12.GPO_MACHINE_VERSION = L11_11
  L12_12.INFO = safeJsonSerialize(L6_6)
  if pcall(mp.GetUrlReputation, {L8_8}, L12_12) and pcall(mp.GetUrlReputation, {L8_8}, L12_12).urls[1].determination == 4 then
    AppendToRollingQueue("gpo_block", L2_2, L9_9, 28800, 128)
    return mp.INFECTED
  end
  AppendToRollingQueue("gpo_applied", L2_2, L9_9, 31536000, 128)
  return mp.INFECTED
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
