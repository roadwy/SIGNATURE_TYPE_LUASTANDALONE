local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36
L0_0 = IsSenseRelatedProc
L0_0 = L0_0()
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
L1_1 = false
if L2_2 then
  if L2_2 == L3_3 then
  elseif not L2_2 then
    return L2_2
  end
  L0_0.type = "BM_REG_BLOCK"
  L0_0.event = L2_2
elseif L2_2 then
  if L2_2 == L3_3 then
  elseif not L2_2 then
    return L2_2
  end
  L0_0.type = "BM_REG_BLOCK"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_Exclusion"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_Exclusion"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "AMSI_Exclusion"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_Exclusion_Wide"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_FW"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_REG_IGNORE"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_REG_IGNORE"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_REG_IGNORE"
  L0_0.event = L2_2
elseif L2_2 then
  L0_0.type = "BM_REG_IGNORE"
  L0_0.event = L2_2
else
  L1_1 = true
end
if L1_1 then
  for L5_5 = L2_2.SIGATTR_LOG_SZ, 1, -1 do
    L6_6 = sigattr_tail
    L6_6 = L6_6[L5_5]
    L7_7 = L6_6.matched
    if L7_7 then
      L7_7 = L6_6.attribute
      if L7_7 == 16407 then
        L7_7 = L6_6.utf8p2
        if L7_7 then
          L7_7 = MpCommon
          L7_7 = L7_7.StringRegExpSearch
          L8_8 = "Trojan:Win32\\/MpTamper(SrvDisableAV|BlockNewFirewall|DisableFeatureWd|SvcCfg|BulkExcl|SvcCfg|SysAdmin|SrvStop|PsExec)"
          L8_8 = L7_7(L8_8, L9_9)
          if L7_7 then
            L0_0.type = "CMD"
            L0_0.event = L9_9
            break
          end
        end
      else
        L7_7 = L6_6.attribute
        if L7_7 == 16472 then
          L7_7 = L6_6.utf8p1
          if L7_7 then
            L7_7 = MpCommon
            L7_7 = L7_7.StringRegExpSearch
            L8_8 = "Trojan:Win32\\/MpTamper(SrvDisableAV|DisableFeatureWd|BulkExcl|)"
            L8_8 = L7_7(L8_8, L9_9)
            if L7_7 then
              L0_0.type = "AMSI"
              L0_0.event = L9_9
              break
            end
          end
        end
      end
    end
  end
end
L5_5 = bm
L5_5 = L5_5.get_current_process_startup_info
L5_5 = L5_5()
L6_6 = L5_5.ppid
L4_4.pid = L6_6
L6_6 = bm
L6_6 = L6_6.get_imagepath
L6_6 = L6_6()
L4_4.imagePath = L6_6
L6_6 = MpCommon
L6_6 = L6_6.IsFriendlyProcess
L7_7 = L5_5.ppid
L6_6 = L6_6(L7_7)
L4_4.friendly = L6_6
L6_6 = mp
L6_6 = L6_6.GetProcessCommandLine
L7_7 = L5_5.ppid
L6_6 = L6_6(L7_7)
L6_6 = L6_6 or ""
L4_4.cmdline = L6_6
L6_6 = string
L6_6 = L6_6.lower
L7_7 = L4_4.cmdline
L6_6 = L6_6(L7_7)
L4_4.cmdline = L6_6
L6_6 = L4_4.friendly
if not L6_6 then
end
L6_6 = string
L6_6 = L6_6.find
L7_7 = L4_4.cmdline
L8_8 = ".bat"
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
if not L6_6 then
  L6_6 = string
  L6_6 = L6_6.find
  L7_7 = L4_4.cmdline
  L8_8 = ".cmd"
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  if not L6_6 then
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L4_4.cmdline
    L8_8 = ".ps1"
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
  end
elseif L6_6 then
  L4_4.hasScriptInCmdline = true
  L6_6 = reportRelevantUntrustedEntitiesForPid
  L7_7 = L5_5.ppid
  L6_6 = L6_6(L7_7)
  if L6_6 then
    L7_7 = next
    L8_8 = L6_6
    L7_7 = L7_7(L8_8)
    if L7_7 then
      L4_4.scriptInCmdline = L6_6
    end
  end
end
L6_6 = IsKeyInRollingQueue
L7_7 = "ShellScripts"
L8_8 = L5_5.ppid
L8_8 = L6_6(L7_7, L8_8, L9_9)
L4_4.shellScripts = L9_9
if L6_6 then
  for L12_12, L13_13 in L9_9(L10_10) do
    L14_14(L15_15, L16_16)
  end
end
if L9_9 then
  L4_4.avExcludedEntities = L10_10
end
L0_0.procInfo = L4_4
L12_12 = L11_11()
L13_13 = {}
if L11_11 then
  for L17_17, L18_18 in L14_14(L15_15) do
    L19_19 = {}
    L20_20 = L18_18.ppid
    if L20_20 then
      L20_20 = L18_18.ppid
      L19_19.ppid = L20_20
      L20_20 = L18_18.image_path
      L20_20 = L20_20 or ""
      L19_19.imagePath = L20_20
      L20_20 = MpCommon
      L20_20 = L20_20.IsFriendlyProcess
      L21_21 = L18_18.ppid
      L20_20 = L20_20(L21_21)
      L19_19.friendly = L20_20
      L20_20 = L19_19.friendly
      if not L20_20 then
      end
      L20_20 = string
      L20_20 = L20_20.lower
      L21_21 = mp
      L21_21 = L21_21.GetProcessCommandLine
      L22_22 = L18_18.ppid
      L21_21 = L21_21(L22_22)
      L21_21 = L21_21 or ""
      L20_20 = L20_20(L21_21)
      L19_19.cmdline = L20_20
      L20_20 = string
      L20_20 = L20_20.find
      L21_21 = L19_19.cmdline
      L22_22 = ".bat"
      L20_20 = L20_20(L21_21, L22_22, L23_23, L24_24)
      if not L20_20 then
        L20_20 = string
        L20_20 = L20_20.find
        L21_21 = L19_19.cmdline
        L22_22 = ".cmd"
        L20_20 = L20_20(L21_21, L22_22, L23_23, L24_24)
        if not L20_20 then
          L20_20 = string
          L20_20 = L20_20.find
          L21_21 = L19_19.cmdline
          L22_22 = ".ps1"
          L20_20 = L20_20(L21_21, L22_22, L23_23, L24_24)
        end
      elseif L20_20 then
        L19_19.hasScriptInCmdline = true
      end
      L20_20 = L18_18.reason
      L21_21 = bm
      L21_21 = L21_21.RELATIONSHIP_CREATED
      if L20_20 == L21_21 then
        L19_19.reason = "CREATED"
      else
        L20_20 = L18_18.reason
        L21_21 = bm
        L21_21 = L21_21.RELATIONSHIP_INJECTION
        if L20_20 == L21_21 then
          L19_19.reason = "INJECTION"
        end
      end
      L20_20 = IsKeyInRollingQueue
      L21_21 = "ShellScripts"
      L22_22 = L18_18.ppid
      L22_22 = L20_20(L21_21, L22_22, L23_23)
      L19_19.shellScripts = L23_23
      if L20_20 then
        for L26_26, L27_27 in L23_23(L24_24) do
          L28_28 = table
          L28_28 = L28_28.insert
          L29_29 = L19_19.shellScripts
          L30_30 = L27_27.value
          L28_28(L29_29, L30_30)
        end
      end
      L23_23(L24_24, L25_25)
    end
  end
end
L0_0.parents = L13_13
L14_14.BM_Exclusion = 5
L14_14.BM_REG_IGNORE = 50
L14_14.BM_REG_BLOCK = 50
L14_14.BM_Exclusion_Wide = 50
L14_14.BM_FW = 100
L14_14.CMD = 50
L14_14.AMSI = 50
L14_14.AMSI_Exclusion = 5
L0_0.weight = L15_15
L0_0.event = L15_15
L15_15["reg.exe"] = 1
L15_15["cmd.exe"] = 1
L15_15["powershell.exe"] = 1
L15_15["svchost.exe"] = 0
L15_15.default = 1
if L16_16 == "BM_Exclusion" then
  L17_17 = 3600
  L18_18 = 100
  L19_19 = "exclusion_events"
  L20_20 = IsKeyInRollingQueue
  L21_21 = L19_19
  L22_22 = L16_16
  L20_20 = L20_20(L21_21, L22_22, L23_23)
  if L20_20 then
    L20_20 = mp
    L20_20 = L20_20.CLEAN
    return L20_20
  end
  L20_20 = AppendToRollingQueue
  L21_21 = L19_19
  L22_22 = L16_16
  L20_20(L21_21, L22_22, L23_23, L24_24, L25_25)
  L20_20 = string
  L20_20 = L20_20.find
  L21_21 = L0_0.event
  L22_22 = "exclusions\\paths"
  L20_20 = L20_20(L21_21, L22_22, L23_23, L24_24)
  if L20_20 then
    L0_0.type = "BM_Exclusion_Path"
  else
    L20_20 = string
    L20_20 = L20_20.find
    L21_21 = L0_0.event
    L22_22 = "exclusions\\extensions"
    L20_20 = L20_20(L21_21, L22_22, L23_23, L24_24)
    if L20_20 then
      L0_0.type = "BM_Exclusion_Extension"
    else
      L20_20 = string
      L20_20 = L20_20.find
      L21_21 = L0_0.event
      L22_22 = "exclusions\\process"
      L20_20 = L20_20(L21_21, L22_22, L23_23, L24_24)
      if L20_20 then
        L0_0.type = "BM_Exclusion_Process"
      else
        L0_0.type = "BM_Exclusion_IP"
      end
    end
  end
  L20_20 = L4_4.pid
  L21_21 = L4_4.imagePath
  L20_20 = L20_20 .. L21_21
  L21_21 = 3600
  L22_22 = 100
  if L24_24 then
    L27_27 = L20_20
    L28_28 = L24_24 + 1
    L29_29 = L21_21
    L30_30 = L22_22
    L25_25(L26_26, L27_27, L28_28, L29_29, L30_30)
  else
    L27_27 = L20_20
    L28_28 = 1
    L29_29 = L21_21
    L30_30 = L22_22
    L25_25(L26_26, L27_27, L28_28, L29_29, L30_30)
  end
  L27_27 = "(%w+%.exe)$"
  L27_27 = L15_15[L25_25]
  L27_27 = L27_27 or L15_15.default
  L0_0.weight = L26_26
  L27_27 = "(documents|downloads|pictures|music|videos)$|\\\\\\\\\\.?(exe|dll|ps1|bat|cmd|sys)$|(\\w:(\\\\*)?\\*?%?$)"
  L28_28 = L0_0.event
  L27_27 = L26_26(L27_27, L28_28)
  if L26_26 then
    L28_28 = L0_0.weight
    L28_28 = L28_28 * 10
    L0_0.weight = L28_28
  end
  L28_28 = L0_0.event
  L29_29 = L28_28
  L28_28 = L28_28.find
  L30_30 = "(%w+%.%w+)$"
  L28_28 = L28_28(L29_29, L30_30)
  if not L28_28 then
    L28_28 = L0_0.event
    L29_29 = L28_28
    L28_28 = L28_28.find
    L30_30 = "(%.%w+)$"
    L28_28 = L28_28(L29_29, L30_30)
  elseif L28_28 then
    L28_28 = MpCommon
    L28_28 = L28_28.StringRegExpSearch
    L29_29 = "[\\\\\\.](exe|dll|ps1|bat|cmd|sys)$"
    L30_30 = L0_0.event
    L29_29 = L28_28(L29_29, L30_30)
    L27_27 = L29_29
    if L26_26 then
      L28_28 = L0_0.event
      L29_29 = L28_28
      L28_28 = L28_28.match
      L30_30 = "\\extensions\\\\"
      L28_28 = L28_28(L29_29, L30_30)
      if not L28_28 then
        L28_28 = L0_0.weight
        L29_29 = L24_24 + 1
        L28_28 = L28_28 / L29_29
        L0_0.weight = L28_28
      end
    else
      L0_0.weight = 0
    end
  end
  L28_28 = L0_0.weight
  if L28_28 == 0 then
    L28_28 = mp
    L28_28 = L28_28.CLEAN
    return L28_28
  end
end
if L16_16 == "AMSI_Exclusion" then
  L17_17 = 3600
  L18_18 = 100
  L19_19 = "exclusion_events"
  L20_20 = IsKeyInRollingQueue
  L21_21 = L19_19
  L22_22 = L16_16
  L20_20 = L20_20(L21_21, L22_22, L23_23)
  if L20_20 then
    L20_20 = mp
    L20_20 = L20_20.CLEAN
    return L20_20
  end
  L20_20 = AppendToRollingQueue
  L21_21 = L19_19
  L22_22 = L16_16
  L20_20(L21_21, L22_22, L23_23, L24_24, L25_25)
  L20_20 = IsKeyInRollingQueue
  L21_21 = "WDAVExclusion"
  L22_22 = L16_16
  L22_22 = L20_20(L21_21, L22_22)
  L0_0.weight = 0
  if L20_20 then
    for L27_27, L28_28 in L24_24(L25_25) do
      L29_29 = string
      L29_29 = L29_29.lower
      L30_30 = L28_28.value
      L29_29 = L29_29(L30_30)
      L30_30 = in_array
      L31_31 = L23_23
      L32_32 = L29_29
      L30_30 = L30_30(L31_31, L32_32)
      if not L30_30 then
        L30_30 = table
        L30_30 = L30_30.insert
        L31_31 = L23_23
        L32_32 = L29_29
        L30_30(L31_31, L32_32)
        L30_30 = L4_4.pid
        L31_31 = L4_4.imagePath
        L30_30 = L30_30 .. L31_31
        L31_31 = "exclusion_events_pid"
        L32_32 = GetRollingQueueKeyValue
        L33_33 = L31_31
        L34_34 = L30_30
        L32_32 = L32_32(L33_33, L34_34)
        if L32_32 then
          L33_33 = AppendToRollingQueue
          L34_34 = L31_31
          L35_35 = L30_30
          L36_36 = L32_32 + 1
          L33_33(L34_34, L35_35, L36_36, L17_17, L18_18)
        else
          L33_33 = AppendToRollingQueue
          L34_34 = L31_31
          L35_35 = L30_30
          L36_36 = 1
          L33_33(L34_34, L35_35, L36_36, L17_17, L18_18)
          L32_32 = 0
        end
        L33_33 = L14_14.AMSI_Exclusion
        L34_34 = L4_4.imagePath
        L35_35 = L34_34
        L34_34 = L34_34.match
        L36_36 = "(%w+%.exe)$"
        L34_34 = L34_34(L35_35, L36_36)
        L35_35 = L15_15[L34_34]
        L35_35 = L35_35 or L15_15.default
        L33_33 = L33_33 * L35_35
        L35_35 = MpCommon
        L35_35 = L35_35.StringRegExpSearch
        L36_36 = "(documents|downloads|pictures|music|videos)$|\\|\\.?(exe|dll|ps1|bat|cmd|sys)$|(\\w:(\\\\*)?\\*?%?$)"
        L36_36 = L35_35(L36_36, L29_29)
        if L35_35 then
          L33_33 = L33_33 * 10
        end
        if L29_29:find("(%w+%.%w+)$") or L29_29:find("(%.%w+)$") then
          L35_35, L36_36 = MpCommon.StringRegExpSearch("[\\|\\.](exe|dll|ps1|bat|cmd|sys)$", L29_29)
          if L35_35 then
            if not L29_29:match("^extension") then
              L33_33 = L33_33 / (L32_32 + 1)
            end
          else
            L33_33 = 0
          end
        end
        L0_0.weight = L0_0.weight + L33_33
      end
    end
  end
  L0_0.event = L24_24
  if L24_24 == 0 then
    return L24_24
  end
end
L16_16.disablearchivescanning = 4
L16_16["threatseveritydefaultaction\\2"] = 8
L16_16.disablescriptscanning = 20
L16_16["5"] = 33
L16_16["4"] = 33
L16_16.disableroutinelytakingaction = 50
L17_17 = {}
L17_17.disableantispyware = 5
L17_17.disableinformationprotectioncontrol = 6
L17_17.disablerawwritenotification = 6
L17_17.disablerealtimemonitoring = 7
L17_17.spynetreporting = 7
L17_17.disablebehaviormonitoring = 8
L17_17.disableintrusionpreventionsystem = 14
L17_17.disableioavprotection = 16
L17_17.disablescriptscanning = 50
L17_17.disableonaccessprotection = 50
L17_17.disablescanonrealtimeenable = 50
L18_18 = L0_0.type
if L18_18 ~= "BM_REG_BLOCK" then
  L18_18 = L0_0.type
elseif L18_18 == "BM_REG_IGNORE" then
  L18_18 = L0_0.event
  L19_19 = 3600
  L20_20 = 100
  L21_21 = "reg_events"
  L22_22 = IsKeyInRollingQueue
  L22_22 = L22_22(L23_23, L24_24, L25_25)
  if L22_22 then
    L22_22 = mp
    L22_22 = L22_22.CLEAN
    return L22_22
  end
  L22_22 = AppendToRollingQueue
  L27_27 = L20_20
  L22_22(L23_23, L24_24, L25_25, L26_26, L27_27)
  L22_22 = 0
  if L23_23 then
    L22_22 = #L23_23
  end
  if L22_22 <= 1 then
    if L25_25 == "BM_REG_BLOCK" then
      L0_0.weight = L25_25
    elseif L25_25 == "BM_REG_IGNORE" then
      L0_0.weight = L25_25
    end
  end
end
if L3_3 then
  L18_18 = L0_0.weight
  L18_18 = L18_18 + 10
  L0_0.weight = L18_18
end
L18_18 = {}
L18_18[21] = "L"
L18_18[51] = "M"
L18_18[101] = "H"
L18_18[121] = "HP"
L19_19 = {}
L19_19[21] = "L"
L19_19[51] = "M"
L19_19[101] = "H"
L19_19[121] = "HP"
L20_20 = reportSessionInformation
L20_20 = L20_20()
L21_21 = L20_20 or {}
L0_0.sessionInfo = L21_21
L21_21 = "TamperingTracking"
L22_22 = 3600
L27_27 = L24_24
L28_28 = L0_0.weight
L29_29 = L22_22
L30_30 = L23_23
L25_25(L26_26, L27_27, L28_28, L29_29, L30_30)
L27_27 = L25_25.sum
L28_28 = L0_0.weight
L29_29 = L18_18
L27_27 = L26_26(L27_27, L28_28, L29_29)
if L26_26 then
  L28_28 = bm
  L28_28 = L28_28.trigger_sig
  L29_29 = "MassTampering_"
  L30_30 = L27_27
  L31_31 = "_Machine"
  L29_29 = L29_29 .. L30_30 .. L31_31
  L30_30 = tostring
  L31_31 = L25_25.sum
  L30_30 = L30_30(L31_31)
  L31_31 = ";"
  L32_32 = L21_21
  L30_30 = L30_30 .. L31_31 .. L32_32
  L28_28(L29_29, L30_30)
  if not L3_3 and not L2_2 then
    L28_28 = next
    L29_29 = L10_10
    L28_28 = L28_28(L29_29)
  elseif L28_28 then
    L28_28 = bm
    L28_28 = L28_28.trigger_sig
    L29_29 = "MassTampering_NonFriendly_Machine"
    L30_30 = tostring
    L31_31 = L25_25.sum
    L30_30 = L30_30(L31_31)
    L31_31 = ";"
    L32_32 = L27_27
    L33_33 = ";"
    L34_34 = L21_21
    L30_30 = L30_30 .. L31_31 .. L32_32 .. L33_33 .. L34_34
    L28_28(L29_29, L30_30)
  end
end
L28_28 = L20_20.User
if L28_28 then
  L28_28 = L20_20.User
  L28_28 = L28_28.UserName
  if L28_28 then
    L28_28 = L20_20.Session
    if L28_28 then
      L28_28 = L20_20.Session
      L28_28 = L28_28.Id
      if L28_28 then
        L28_28 = L21_21
        L29_29 = "-"
        L30_30 = L20_20.User
        L30_30 = L30_30.UserName
        L28_28 = L28_28 .. L29_29 .. L30_30
        L29_29 = AppendToRollingQueue
        L30_30 = L28_28
        L31_31 = L24_24
        L32_32 = L0_0.weight
        L33_33 = L22_22
        L34_34 = L23_23
        L29_29(L30_30, L31_31, L32_32, L33_33, L34_34)
        L29_29 = GetRollingQueueSumOfValues
        L30_30 = L28_28
        L29_29 = L29_29(L30_30)
        L30_30 = CheckNewThresholdMet
        L31_31 = L29_29.sum
        L32_32 = L0_0.weight
        L33_33 = L19_19
        L31_31 = L30_30(L31_31, L32_32, L33_33)
        if L30_30 then
          L32_32 = bm
          L32_32 = L32_32.trigger_sig
          L33_33 = "MassTampering_"
          L34_34 = L31_31
          L35_35 = "_User"
          L33_33 = L33_33 .. L34_34 .. L35_35
          L34_34 = tostring
          L35_35 = L29_29.sum
          L34_34 = L34_34(L35_35)
          L35_35 = ";"
          L36_36 = L28_28
          L34_34 = L34_34 .. L35_35 .. L36_36
          L32_32(L33_33, L34_34)
        end
      end
    end
  end
end
L28_28 = string
L28_28 = L28_28.find
L29_29 = L0_0.type
L30_30 = "BM_Exclusion"
L31_31 = 1
L32_32 = true
L28_28 = L28_28(L29_29, L30_30, L31_31, L32_32)
if L28_28 then
  L28_28 = "AVExclusions"
  L29_29 = 946080000
  L30_30 = 100
  L31_31 = AppendToRollingQueue
  L32_32 = L28_28
  L33_33 = L0_0.event
  L34_34 = L24_24
  L35_35 = L29_29
  L36_36 = L30_30
  L31_31(L32_32, L33_33, L34_34, L35_35, L36_36)
end
L28_28 = mp
L28_28 = L28_28.CLEAN
return L28_28
