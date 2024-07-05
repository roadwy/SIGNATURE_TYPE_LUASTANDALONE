local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6
  L0_2 = {}
  L0_2["excel.exe"] = "productivity"
  L0_2["onenote.exe"] = "productivity"
  L0_2["outlook.exe"] = "communication"
  L0_2["powerpnt.exe"] = "productivity"
  L0_2["winword.exe"] = "productivity"
  L0_2["lync.exe"] = "communication2"
  L0_2["msaccess.exe"] = "productivity2"
  L0_2["mspub.exe"] = "productivity2"
  L0_2["visio.exe"] = "productivity2"
  L1_3 = mp
  L1_3 = L1_3.get_contextdata
  L2_4 = mp
  L2_4 = L2_4.CONTEXT_DATA_PROCESSNAME
  L1_3 = L1_3(L2_4)
  if L1_3 == nil or L1_3 == "" then
    L2_4 = ""
    return L2_4
  end
  L2_4 = string
  L2_4 = L2_4.lower
  L3_5 = L1_3
  L2_4 = L2_4(L3_5)
  L1_3 = L2_4
  L2_4 = L0_2[L1_3]
  if L2_4 == nil then
    L2_4 = isOutlookProcess
    L3_5 = L1_3
    L2_4 = L2_4(L3_5)
    if not L2_4 then
      L2_4 = ""
      return L2_4
    end
  end
  L2_4 = MpCommon
  L2_4 = L2_4.PathToWin32Path
  L3_5 = mp
  L3_5 = L3_5.get_contextdata
  L4_6 = mp
  L4_6 = L4_6.CONTEXT_DATA_PROCESSDEVICEPATH
  L4_6 = L3_5(L4_6)
  L2_4 = L2_4(L3_5, L4_6, L3_5(L4_6))
  if L2_4 == nil or L2_4 == "" then
    L3_5 = ""
    return L3_5
  end
  L3_5 = string
  L3_5 = L3_5.lower
  L4_6 = L2_4
  L3_5 = L3_5(L4_6)
  L2_4 = L3_5
  L3_5 = MpCommon
  L3_5 = L3_5.ExpandEnvironmentVariables
  L4_6 = "%programfiles%"
  L3_5 = L3_5(L4_6)
  if L3_5 == nil or L3_5 == "" then
    L4_6 = ""
    return L4_6
  end
  L4_6 = string
  L4_6 = L4_6.lower
  L4_6 = L4_6(L3_5)
  L3_5 = L4_6
  L4_6 = MpCommon
  L4_6 = L4_6.ExpandEnvironmentVariables
  L4_6 = L4_6("%programfiles(x86)%")
  if L4_6 == nil or L4_6 == "" then
    return ""
  end
  L4_6 = string.lower(L4_6)
  if L2_4 == L3_5 .. "\\microsoft office\\root\\office14" or L2_4 == L3_5 .. "\\microsoft office\\root\\office15" or L2_4 == L3_5 .. "\\microsoft office\\root\\office16" or L2_4 == L3_5 .. "\\microsoft office\\office14" or L2_4 == L3_5 .. "\\microsoft office\\office15" or L2_4 == L3_5 .. "\\microsoft office\\office16" or L2_4 == L4_6 .. "\\microsoft office\\root\\office14" or L2_4 == L4_6 .. "\\microsoft office\\root\\office15" or L2_4 == L4_6 .. "\\microsoft office\\root\\office16" or L2_4 == L4_6 .. "\\microsoft office\\office14" or L2_4 == L4_6 .. "\\microsoft office\\office15" or L2_4 == L4_6 .. "\\microsoft office\\office16" or L2_4:find(L3_5 .. "\\windowsapps\\microsoft.office.desktop.", 1, true) ~= nil or L2_4:find(L4_6 .. "\\windowsapps\\microsoft.office.desktop.", 1, true) ~= nil then
    return L0_2[L1_3]
  end
  return ""
end
GetCtxOfficeProc = L0_0
function L0_0()
  local L0_7
  L0_7 = mp
  L0_7 = L0_7.GetCertificateInfo
  L0_7 = L0_7()
  for _FORV_4_, _FORV_5_ in pairs(L0_7) do
    if _FORV_5_.Signers ~= nil then
      return true
    end
  end
  return false
end
is_signed = L0_0
function L0_0()
  local L0_8, L1_9, L2_10
  L1_9 = mp
  L1_9 = L1_9.get_contextdata
  L2_10 = mp
  L2_10 = L2_10.CONTEXT_DATA_PROCESS_PPID
  L1_9 = L1_9(L2_10)
  if L1_9 ~= nil then
    L2_10 = mp
    L2_10 = L2_10.GetProcessCommandLine
    L2_10 = L2_10(L1_9)
    if L2_10 ~= nil and L2_10 ~= "" then
      L2_10 = string.lower(L2_10)
      L0_8 = string.match(L2_10, ".:\\program files\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
      if L0_8 == nil or L0_8 == "" then
        L0_8 = string.match(L2_10, ".:\\program files\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
        if L0_8 == nil or L0_8 == "" then
          L0_8 = string.match(L2_10, ".:\\program files %(x86%)\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
          if L0_8 == nil or L0_8 == "" then
            L0_8 = string.match(L2_10, ".:\\program files %(x86%)\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
            if L0_8 == nil or L0_8 == "" then
              L0_8 = string.match(L2_10, ".:\\program files\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              if L0_8 == nil or L0_8 == "" then
                L0_8 = string.match(L2_10, ".:\\program files %(x86%)\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              end
            end
          end
        end
      end
    end
  end
  if L0_8 == nil or L0_8 == "" then
    L2_10 = nil
    return L2_10
  end
  L2_10 = MpCommon
  L2_10 = L2_10.PathToWin32Path
  L2_10 = L2_10(L0_8)
  if L2_10 ~= "" and L2_10 ~= nil then
    return L2_10
  else
    return L0_8
  end
end
GetInvolvedFileInCmdLnIfExistOnMachine = L0_0
function L0_0()
  local L0_11, L1_12, L2_13
  L1_12 = mp
  L1_12 = L1_12.get_contextdata
  L2_13 = mp
  L2_13 = L2_13.CONTEXT_DATA_AMSI_OPERATION_PPID
  L1_12 = L1_12(L2_13)
  if L1_12 ~= nil then
    L2_13 = mp
    L2_13 = L2_13.GetProcessCommandLine
    L2_13 = L2_13(L1_12)
    if L2_13 ~= nil and L2_13 ~= "" then
      L2_13 = string.lower(L2_13)
      L0_11 = string.match(L2_13, ".:\\program files\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
      if L0_11 == nil or L0_11 == "" then
        L0_11 = string.match(L2_13, ".:\\program files\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
        if L0_11 == nil or L0_11 == "" then
          L0_11 = string.match(L2_13, ".:\\program files %(x86%)\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
          if L0_11 == nil or L0_11 == "" then
            L0_11 = string.match(L2_13, ".:\\program files %(x86%)\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
            if L0_11 == nil or L0_11 == "" then
              L0_11 = string.match(L2_13, ".:\\program files\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              if L0_11 == nil or L0_11 == "" then
                L0_11 = string.match(L2_13, ".:\\program files %(x86%)\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              end
            end
          end
        end
      end
    end
  end
  if L0_11 == nil or L0_11 == "" then
    L2_13 = nil
    return L2_13
  end
  L2_13 = MpCommon
  L2_13 = L2_13.PathToWin32Path
  L2_13 = L2_13(L0_11)
  if L2_13 ~= "" and L2_13 ~= nil then
    return L2_13
  else
    return L0_11
  end
end
GetInvolvedFileInCmdLnIfExistOnMachineAMSI = L0_0
function L0_0()
  local L0_14, L1_15, L2_16
  L0_14 = mp
  L0_14 = L0_14.get_contextdata
  L1_15 = mp
  L1_15 = L1_15.CONTEXT_DATA_SCANREASON
  L0_14 = L0_14(L1_15)
  L1_15 = mp
  L1_15 = L1_15.SCANREASON_AMSI
  if L0_14 ~= L1_15 then
    L0_14 = nil
    return L0_14
  end
  L0_14 = nil
  L1_15 = mp
  L1_15 = L1_15.get_contextdata
  L2_16 = mp
  L2_16 = L2_16.CONTEXT_DATA_AMSI_CONTENTNAME
  L1_15 = L1_15(L2_16)
  L0_14 = L1_15
  if L0_14 == nil or L0_14 == "" then
    L1_15 = nil
    return L1_15
  end
  L1_15 = string
  L1_15 = L1_15.match
  L2_16 = L0_14
  L2_16 = L1_15(L2_16, "(.*)%.(%a+)->%w+/%w+.bin$")
  if L1_15 == nil or L1_15 == "" or L2_16 == nil or L2_16 == "" then
    return nil
  end
  L0_14 = L1_15 .. "." .. L2_16
  L0_14 = string.lower(MpCommon.PathToWin32Path(L0_14))
  if L0_14 == nil or L0_14 == "" then
    return nil
  end
  if sysio.IsFileExists(L0_14) then
    return L0_14
  end
  return nil
end
GetNonVfoAmsiContentNamePathIfExistOnMachine = L0_0
function L0_0()
  local L0_17, L1_18
  L0_17 = mp
  L0_17 = L0_17.getfilename
  L1_18 = mp
  L1_18 = L1_18.bitor
  L1_18 = L1_18(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE)
  L0_17 = L0_17(L1_18, L1_18(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE))
  if L0_17 == nil or L0_17 == "" then
    L1_18 = nil
    return L1_18
  end
  L1_18 = string
  L1_18 = L1_18.lower
  L1_18 = L1_18(MpCommon.PathToWin32Path(L0_17))
  if L1_18 == nil or L1_18 == "" then
    return nil
  end
  if sysio.IsFileExists(L1_18) then
    return L1_18
  end
  return nil
end
GetNonVfoScannedFilePathIfExistOnMachine = L0_0
