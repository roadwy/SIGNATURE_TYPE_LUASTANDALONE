local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "3b576869-a4ec-4529-8536-b80a7769e899"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = GetCtxOfficeProc
L0_0 = L0_0()
if L0_0 ~= "productivity" then
  L0_0 = MpCommon
  L0_0 = L0_0.GetPersistContextCountNoPath
  L1_1 = "BlockOfficeCreateExecContentProcs"
  L0_0 = L0_0(L1_1)
  if L0_0 == 0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
  L0_0 = L0_0(L1_1)
  if L0_0 == "" or L0_0 == nil then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
  L1_1 = L1_1(L2_2)
  if L1_1 == "" or L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
  L2_2 = L1_1
  L3_3 = "+"
  L4_4 = L0_0
  L2_2 = L2_2 .. L3_3 .. L4_4
  L3_3 = MpCommon
  L3_3 = L3_3.QueryPersistContextNoPath
  L4_4 = "BlockOfficeCreateExecContentProcs"
  L5_5 = L2_2
  L3_3 = L3_3(L4_4, L5_5)
  if not L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L0_0 = {}
L0_0[".bat"] = true
L0_0[".cmd"] = true
L0_0[".hta"] = true
L0_0[".jar"] = true
L0_0[".js"] = true
L0_0[".jse"] = true
L0_0[".lnk"] = true
L0_0[".pif"] = true
L0_0[".ps1"] = true
L0_0[".psc1"] = true
L0_0[".settingcontent-ms"] = true
L0_0[".appcontent-ms"] = true
L0_0[".application"] = true
L0_0[".scr"] = true
L0_0[".sys"] = true
L0_0[".vbe"] = true
L0_0[".vbs"] = true
L0_0[".wsc"] = true
L0_0[".wsf"] = true
L0_0[".wsh"] = true
L0_0[".ocx"] = true
L0_0[".com"] = true
L0_0[".exe"] = true
L0_0[".dll"] = true
L0_0[".xll"] = true
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILENAME
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "(%.[^%.]+)$"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_FILEPATH
L17_17 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L4_4(L5_5))
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = L3_3
L4_4 = L4_4(L5_5)
L3_3 = L4_4
L4_4 = L3_3
L5_5 = "\\"
L6_6 = L1_1
L4_4 = L4_4 .. L5_5 .. L6_6
L5_5 = mp
L5_5 = L5_5.IsPathExcludedForHipsRule
L6_6 = L4_4
L7_7 = "3b576869-a4ec-4529-8536-b80a7769e899"
L5_5 = L5_5(L6_6, L7_7)
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L6_6 = "%programdata%"
L5_5 = L5_5(L6_6)
if L5_5 == nil then
  L6_6 = ""
else
  L6_6 = L6_6 or L5_5
end
L7_7 = L6_6
L6_6 = L6_6.lower
L6_6 = L6_6(L7_7)
L5_5 = L6_6
L6_6 = MpCommon
L6_6 = L6_6.ExpandEnvironmentVariables
L7_7 = "%systemdrive%"
L6_6 = L6_6(L7_7)
if L6_6 == nil then
  L7_7 = ""
else
  L7_7 = L7_7 or L6_6
end
L8_8 = L7_7
L7_7 = L7_7.lower
L7_7 = L7_7(L8_8)
L6_6 = L7_7
L7_7 = MpCommon
L7_7 = L7_7.ExpandEnvironmentVariables
L8_8 = "%systemroot%"
L7_7 = L7_7(L8_8)
if L7_7 == nil then
  L8_8 = ""
else
  L8_8 = L8_8 or L7_7
end
L9_9 = L8_8
L8_8 = L8_8.lower
L8_8 = L8_8(L9_9)
L7_7 = L8_8
L8_8 = string
L8_8 = L8_8.lower
L9_9 = mp
L9_9 = L9_9.ContextualExpandEnvironmentVariables
L10_10 = "%userprofile%"
L17_17 = L9_9(L10_10)
L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L9_9(L10_10))
L9_9 = nil
if L8_8 ~= nil and L8_8 ~= "" then
  L10_10 = string
  L10_10 = L10_10.match
  L11_11 = L8_8
  L12_12 = "(%a:.*\\)[^\\]+$"
  L10_10 = L10_10(L11_11, L12_12)
  L9_9 = L10_10
end
L10_10 = MpCommon
L10_10 = L10_10.ExpandEnvironmentVariables
L11_11 = "%programfiles%"
L10_10 = L10_10(L11_11)
if L10_10 == nil then
  L11_11 = ""
else
  L11_11 = L11_11 or L10_10
end
L12_12 = L11_11
L11_11 = L11_11.lower
L11_11 = L11_11(L12_12)
L10_10 = L11_11
L11_11 = L0_0[L2_2]
if L11_11 == true then
  if L2_2 == ".lnk" then
    L12_12 = L3_3
    L11_11 = L3_3.find
    L13_13 = L6_6
    L14_14 = "\\appsensevirtual\\"
    L13_13 = L13_13 .. L14_14
    L14_14 = 1
    L15_15 = true
    L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
    if L11_11 ~= nil then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L12_12 = L3_3
    L11_11 = L3_3.find
    L13_13 = L7_7
    L14_14 = "\\syswow64\\config\\systemprofile\\appdata\\roaming\\microsoft\\office\\"
    L13_13 = L13_13 .. L14_14
    L14_14 = 1
    L15_15 = true
    L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
    if L11_11 ~= nil then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    if L9_9 ~= nil and L9_9 ~= "" then
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\office\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\excel\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\onenote\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\outlook\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\olk\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\powerpoint\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\word\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\internet explorer\\quick launch"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\windows\\start menu\\programs\\startup"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\internet explorer\\quick launch"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\office\\recent"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\localcache\\roaming\\microsoft\\windows\\start menu\\programs\\startup"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\invincea\\enterprise\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\documents\\my data sources"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\onedrive\\documents\\my data sources"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
    end
    L11_11 = mp
    L11_11 = L11_11.getfilename
    L12_12 = mp
    L12_12 = L12_12.FILEPATH_QUERY_LOWERCASE
    L11_11 = L11_11(L12_12)
    if L11_11 ~= nil then
      L13_13 = L11_11
      L12_12 = L11_11.find
      L14_14 = "\\device\\harddiskvolume%d+\\users\\[^\\]+\\appdata\\roaming\\microsoft\\office\\"
      L12_12 = L12_12(L13_13, L14_14)
      if L12_12 ~= nil then
        L12_12 = mp
        L12_12 = L12_12.CLEAN
        return L12_12
      end
    end
    L12_12 = mp
    L12_12 = L12_12.get_mpattribute
    L13_13 = "BM_LNK_FILE"
    L12_12 = L12_12(L13_13)
    if L12_12 then
      L12_12 = {}
      L12_12[".doc"] = true
      L12_12[".docx"] = true
      L12_12[".docm"] = true
      L12_12[".xls"] = true
      L12_12[".xlsx"] = true
      L12_12[".xlsm"] = true
      L12_12[".ppt"] = true
      L12_12[".pptx"] = true
      L12_12[".accdb"] = true
      L13_13 = mp
      L13_13 = L13_13.GetLnkInfo
      L13_13 = L13_13()
      if L13_13 ~= nil and L13_13 ~= "" then
        L14_14 = L13_13.BasePath
        if L14_14 ~= nil and L14_14 ~= "" then
          L15_15 = string
          L15_15 = L15_15.match
          L16_16 = L14_14
          L17_17 = "(%.[^%.]+)$"
          L15_15 = L15_15(L16_16, L17_17)
          if L15_15 ~= nil and L15_15 ~= "" then
            L16_16 = string
            L16_16 = L16_16.lower
            L17_17 = L15_15
            L16_16 = L16_16(L17_17)
            L16_16 = L12_12[L16_16]
            if L16_16 == true then
              L16_16 = mp
              L16_16 = L16_16.CLEAN
              return L16_16
            end
          else
            L16_16 = L13_13.RelativePath
            if L16_16 ~= nil or L16_16 ~= "" then
              L17_17 = string
              L17_17 = L17_17.match
              L17_17 = L17_17(L16_16, "(%.[^%.]+)$")
              if L17_17 ~= nil and L17_17 ~= "" and L12_12[string.lower(L17_17)] == true then
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  elseif L2_2 == ".js" then
    if L9_9 ~= nil and L9_9 ~= "" then
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache\\ie\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\microsoft\\windows\\temporary internet files\\content.ie5\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\microsoft\\windows\\inetcache1\\temporary internet files\\ie\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\packages\\microsoft.office.desktop_8wekyb3d8bbwe\\ac\\inetcache\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L4_4
      L11_11 = L4_4.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\microsoft\\office\\[%d%.]+\\smartlookupcache\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\local\\microsoft\\office\\[%d%.]+\\wef\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L3_3
      L11_11 = L3_3.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\appdata\\roaming\\refinitiv\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
      L12_12 = L4_4
      L11_11 = L4_4.find
      L13_13 = L9_9
      L14_14 = "[^\\]+\\inetcache\\ie\\"
      L13_13 = L13_13 .. L14_14
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
    end
    L11_11 = mp
    L11_11 = L11_11.ContextualGetShellKnownFolder
    L12_12 = "352481E8-33BE-4251-BA85-6007CAEDCF9D"
    L11_11 = L11_11(L12_12)
    if L11_11 ~= nil and L11_11 ~= "" then
      L13_13 = L3_3
      L12_12 = L3_3.find
      L14_14 = L11_11
      L15_15 = "\\ie"
      L14_14 = L14_14 .. L15_15
      L15_15 = 1
      L16_16 = true
      L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
      if L12_12 ~= nil then
        L12_12 = mp
        L12_12 = L12_12.CLEAN
        return L12_12
      end
    end
  elseif L2_2 == ".application" then
    L12_12 = L1_1
    L11_11 = L1_1.find
    L13_13 = "^%w%w%w%w%w%w%w%w%.%w%w%w%.application$"
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 ~= nil then
      if L9_9 ~= nil and L9_9 ~= "" then
        L12_12 = L3_3
        L11_11 = L3_3.find
        L13_13 = L9_9
        L14_14 = "[^\\]+\\appdata\\local\\temp\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w"
        L13_13 = L13_13 .. L14_14
        L11_11 = L11_11(L12_12, L13_13)
        if L11_11 ~= nil then
          L11_11 = mp
          L11_11 = L11_11.CLEAN
          return L11_11
        end
      end
      if L9_9 ~= nil and L9_9 ~= "" then
        L12_12 = L3_3
        L11_11 = L3_3.find
        L13_13 = L9_9
        L14_14 = "[^\\]+\\appdata\\local\\temp\\%d+\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w"
        L13_13 = L13_13 .. L14_14
        L11_11 = L11_11(L12_12, L13_13)
        if L11_11 ~= nil then
          L11_11 = mp
          L11_11 = L11_11.CLEAN
          return L11_11
        end
      end
      L12_12 = L3_3
      L11_11 = L3_3.match
      L13_13 = "\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w$"
      L11_11 = L11_11(L12_12, L13_13)
      if L11_11 ~= nil and L8_8 ~= nil and L8_8 ~= "" then
        L12_12 = L8_8
        L13_13 = "\\appdata\\local\\temp"
        L14_14 = L11_11
        L12_12 = L12_12 .. L13_13 .. L14_14
        if L3_3 == L12_12 then
          L12_12 = mp
          L12_12 = L12_12.CLEAN
          return L12_12
        end
      end
      L13_13 = L3_3
      L12_12 = L3_3.match
      L14_14 = ":\\users\\local_.*\\temp\\deployment\\%w%w%w%w%w%w%w%w%.%w%w%w"
      L12_12 = L12_12(L13_13, L14_14)
      if L12_12 ~= nil then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
    end
  elseif L2_2 == ".dll" or L2_2 == ".exe" then
    L11_11 = mp
    L11_11 = L11_11.IsTrustedFile
    L12_12 = false
    L12_12 = L11_11(L12_12)
    if L11_11 == true then
      L13_13 = mp
      L13_13 = L13_13.CLEAN
      return L13_13
    end
    if L9_9 ~= nil and L9_9 ~= "" then
      L14_14 = L3_3
      L13_13 = L3_3.find
      L15_15 = L9_9
      L16_16 = "[^\\]+\\appdata\\local\\assembly\\tmp\\"
      L15_15 = L15_15 .. L16_16
      L13_13 = L13_13(L14_14, L15_15)
      if L13_13 ~= nil then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
    end
    if L9_9 ~= nil and L9_9 ~= "" then
      L14_14 = L3_3
      L13_13 = L3_3.find
      L15_15 = L9_9
      L16_16 = "[^\\]+\\appdata\\local\\temp\\deployment\\"
      L15_15 = L15_15 .. L16_16
      L13_13 = L13_13(L14_14, L15_15)
      if L13_13 ~= nil then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
    end
    if L9_9 ~= nil and L9_9 ~= "" then
      L14_14 = L4_4
      L13_13 = L4_4.find
      L15_15 = L9_9
      L16_16 = "[^\\]+\\appdata\\local\\apps\\2.0\\.+\\dealanalysistool.dll"
      L15_15 = L15_15 .. L16_16
      L13_13 = L13_13(L14_14, L15_15)
      if L13_13 ~= nil then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
    end
    L13_13 = mp
    L13_13 = L13_13.get_mpattribute
    L14_14 = "Lua:SignedThinkCellComponent"
    L13_13 = L13_13(L14_14)
    if L13_13 then
      L13_13 = mp
      L13_13 = L13_13.CLEAN
      return L13_13
    end
    if L2_2 == ".dll" then
      L13_13 = mp
      L13_13 = L13_13.get_mpattribute
      L14_14 = "SOAPSchema.A"
      L13_13 = L13_13(L14_14)
      if L13_13 then
        L13_13 = mp
        L13_13 = L13_13.CLEAN
        return L13_13
      end
    end
  elseif L2_2 == ".com" and L9_9 ~= nil and L9_9 ~= "" then
    L12_12 = L3_3
    L11_11 = L3_3.find
    L13_13 = L9_9
    L14_14 = "[^\\]+\\appdata\\local\\temp\\microsoft\\team foundation\\[^\\]+\\cache\\avatars\\"
    L13_13 = L13_13 .. L14_14
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 ~= nil then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
  end
  L11_11 = mp
  L11_11 = L11_11.set_mpattribute
  L12_12 = "MpDisableCaching"
  L11_11(L12_12)
  L11_11 = mp
  L11_11 = L11_11.INFECTED
  return L11_11
else
  L12_12 = L3_3
  L11_11 = L3_3.find
  L13_13 = L5_5
  L14_14 = "\\microsoft\\windows\\start menu\\programs\\startup"
  L13_13 = L13_13 .. L14_14
  L14_14 = 1
  L15_15 = true
  L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15)
  if L11_11 ~= nil then
    L11_11 = mp
    L11_11 = L11_11.INFECTED
    return L11_11
  end
  if L9_9 ~= nil and L9_9 ~= "" then
    L12_12 = L3_3
    L11_11 = L3_3.find
    L13_13 = L9_9
    L14_14 = "[^\\]+\\appdata\\roaming\\microsoft\\windows\\start menu\\programs\\startup"
    L13_13 = L13_13 .. L14_14
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 ~= nil then
      L11_11 = mp
      L11_11 = L11_11.INFECTED
      return L11_11
    end
  end
  L11_11 = mp
  L11_11 = L11_11.get_mpattribute
  L12_12 = "BM_CONTAINER_FILE"
  L11_11 = L11_11(L12_12)
  if not L11_11 then
    L11_11 = mp
    L11_11 = L11_11.get_mpattribute
    L12_12 = "BM_SCRIPT_OR_TEXT_FILE"
    L11_11 = L11_11(L12_12)
  elseif L11_11 then
    L11_11 = MpCommon
    L11_11 = L11_11.QueryPersistContext
    L12_12 = L4_4
    L13_13 = "DroppedByOfficeProc"
    L11_11 = L11_11(L12_12, L13_13)
    if L11_11 then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L11_11 = MpCommon
    L11_11 = L11_11.AppendPersistContext
    L12_12 = L4_4
    L13_13 = "DroppedByOfficeProc"
    L14_14 = 0
    L11_11(L12_12, L13_13, L14_14)
    L11_11 = mp
    L11_11 = L11_11.ReportLowfi
    L12_12 = mp
    L12_12 = L12_12.getfilename
    L12_12 = L12_12()
    L13_13 = 1585622778
    L11_11(L12_12, L13_13)
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L12_12 = "MpDisableCaching"
    L11_11(L12_12)
  end
end
L11_11 = mp
L11_11 = L11_11.CLEAN
return L11_11
