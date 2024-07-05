local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L17_17 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L2_2(L3_3))
if L1_1 == "svchost.exe" then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
  L1_1 = L1_1(L2_2)
  L2_2 = mp
  L2_2 = L2_2.GetProcessCommandLine
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.len
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
  elseif L3_3 == 0 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = string
  L4_4 = L4_4.match
  L5_5 = L2_2
  L6_6 = "-s%s+([^%s]+)"
  L17_17 = L4_4(L5_5, L6_6)
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L4_4(L5_5, L6_6))
  if L3_3 ~= "bits" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
else
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
  L1_1 = L1_1(L2_2)
  if L1_1 ~= "sumagar_test.goforit" then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = sysio
L1_1 = L1_1.EnumerateBitsJobs
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L3_3 = {}
L4_4 = 0
L5_5, L6_6 = nil, nil
L7_7 = MpCommon
L7_7 = L7_7.GetPersistContextCountNoPath
L8_8 = "urlsFromBitsJobs"
L7_7 = L7_7(L8_8)
L8_8 = {}
if L7_7 > 0 then
  L9_9 = MpCommon
  L9_9 = L9_9.GetPersistContextNoPath
  L10_10 = "urlsFromBitsJobs"
  L9_9 = L9_9(L10_10)
  L8_8 = L9_9
end
L3_3.SIG_CONTEXT = "LUA_GENERIC"
L3_3.CONTENT_SOURCE = "BITS"
L3_3.PROCESS_CONTEXT = "SVCHOST.EXE"
L3_3.PARENT_CONTEXT = nil
L3_3.FILELESS = "true"
L3_3.CMDLINE_URL = "false"
L3_3.BREAK_AT_FIRST_HIT_MALWARE = "40"
L9_9 = false
L10_10 = nil
for L14_14, L15_15 in L11_11(L12_12) do
  L16_16 = string
  L16_16 = L16_16.sub
  L17_17 = L15_15.JobName
  L16_16 = L16_16(L17_17, L18_18, L19_19)
  if L16_16 ~= "CCMDTS Job" then
    if L7_7 >= 256 then
      break
    end
    if L4_4 >= 30 then
      break
    end
    L16_16 = string
    L16_16 = L16_16.format
    L17_17 = "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x"
    L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, string.byte(L15_15.JobId, 8), string.byte(L15_15.JobId, 7), string.byte(L15_15.JobId, 9, 16))
    L17_17 = string
    L17_17 = L17_17.lower
    L17_17 = L17_17(L18_18)
    if L17_17 ~= "" and L17_17 ~= nil then
      for L21_21 in L18_18(L19_19, L20_20) do
        if L7_7 > 0 then
          for _FORV_25_, _FORV_26_ in L22_22(L23_23) do
            if L21_21 == _FORV_26_ then
              break
            end
          end
        end
        if L21_21 ~= nil then
          if L22_22 == 0 or L22_22 == 1 and L23_23 == 0 then
            L4_4 = L4_4 + 1
            if L4_4 > 30 then
              break
            end
            L7_7 = L7_7 + 1
            if L7_7 > 256 then
              break
            end
            table.insert(L2_2, L4_4, L21_21)
            L6_6 = L16_16 .. "<$>" .. string.sub(L15_15.JobName, 1, 32) .. "<$>" .. L15_15.JobType .. "<$>" .. L15_15.JobRetryDelay .. "<$>" .. L15_15.JobNoProgressTimeout .. "<$>" .. L15_15.JobLastError .. "<$>" .. L15_15.JobLastErrorContext .. "<$>" .. string.sub(L15_15.NotifyCmdProgram, 1, 64) .. "<$>" .. string.sub(L15_15.NotifyCmdProgramParam, 1, 128)
            L5_5 = tostring(L4_4)
            L3_3[L5_5] = L6_6
            table.insert(L8_8, L21_21)
            MpCommon.AppendPersistContextNoPath("urlsFromBitsJobs", L21_21, 0)
          end
        end
      end
      for L21_21 in L18_18(L19_19, L20_20) do
        if L7_7 > 0 then
          for _FORV_25_, _FORV_26_ in L22_22(L23_23) do
            if L21_21 == _FORV_26_ then
              break
            end
          end
        end
        if L21_21 ~= nil then
          if L22_22 ~= 0 then
            if L22_22 == 0 or L22_22 == 1 and L23_23 == 0 then
              L4_4 = L4_4 + 1
              if L4_4 > 30 then
                break
              end
              L7_7 = L7_7 + 1
              if L7_7 > 256 then
                break
              end
              table.insert(L2_2, L4_4, L21_21)
              L6_6 = L16_16 .. "<$>" .. string.sub(L15_15.JobName, 1, 32) .. "<$>" .. L15_15.JobType .. "<$>" .. L15_15.JobRetryDelay .. "<$>" .. L15_15.JobNoProgressTimeout .. "<$>" .. L15_15.JobLastError .. "<$>" .. L15_15.JobLastErrorContext .. "<$>" .. string.sub(L15_15.NotifyCmdProgram, 1, 64) .. "<$>" .. string.sub(L15_15.NotifyCmdProgramParam, 1, 128)
              L5_5 = tostring(L4_4)
              L3_3[L5_5] = L6_6
              table.insert(L8_8, L21_21)
              MpCommon.AppendPersistContextNoPath("urlsFromBitsJobs", L21_21, 0)
            end
          end
        end
      end
    end
    if L18_18 ~= nil then
      for L21_21, L22_22 in L18_18(L19_19) do
        if L23_23 == nil then
          if L23_23 ~= "" and L23_23 ~= nil then
            L9_9, L10_10 = MpCommon.StringRegExpSearch("[\"]?((http[s]?|ftp[s]?):[^\\s\"']+)[\"]?", L23_23)
            if L9_9 == true and L10_10 ~= "" and L10_10 ~= nil then
              if L7_7 > 0 then
                for _FORV_27_, _FORV_28_ in ipairs(L8_8) do
                  if L10_10 == _FORV_28_ then
                    L10_10 = nil
                    break
                  end
                end
              end
              if L10_10 ~= nil and (mp.CheckUrl(L10_10) == 0 or mp.CheckUrl(L10_10) == 1 and mp.CheckUrl(L10_10) == 0) then
                L4_4 = L4_4 + 1
                if L4_4 > 30 then
                  break
                end
                L7_7 = L7_7 + 1
                if L7_7 > 256 then
                  break
                end
                table.insert(L2_2, L4_4, L10_10)
                L6_6 = L16_16 .. "<$>" .. string.sub(L15_15.JobName, 1, 32) .. "<$>" .. L15_15.JobType .. "<$>" .. L15_15.JobRetryDelay .. "<$>" .. L15_15.JobNoProgressTimeout .. "<$>" .. L15_15.JobLastError .. "<$>" .. L15_15.JobLastErrorContext .. "<$>" .. string.sub(L15_15.NotifyCmdProgram, 1, 64) .. "<$>" .. string.sub(L15_15.NotifyCmdProgramParam, 1, 128) .. "<$>" .. string.sub(L22_22.FileLocalName, 1, 128) .. "<$>" .. string.sub(L22_22.FileRemoteName, 1, 256)
                L5_5 = tostring(L4_4)
                L3_3[L5_5] = L6_6
                table.insert(L8_8, L10_10)
                MpCommon.AppendPersistContextNoPath("urlsFromBitsJobs", L10_10, 0)
              end
            end
          end
        end
      end
    end
  end
end
if L4_4 == 0 then
  return L11_11
elseif L11_11 == 0 then
  return L11_11
end
L11_11(L12_12, L13_13)
if L11_11 ~= nil then
  L12_12(L13_13, L14_14)
  for L16_16, L17_17 in L13_13(L14_14) do
    for L22_22, L23_23 in L19_19(L20_20) do
      if L23_23 == L17_17.url then
      end
    end
    if L18_18 == nil then
      return L19_19
    end
    if L20_20 == 2 then
      L20_20(L21_21, L22_22, L23_23)
    elseif L20_20 == 3 then
      L20_20(L21_21, L22_22, L23_23)
    elseif L20_20 == 4 then
      L20_20(L21_21, L22_22, L23_23)
      return L20_20
    end
  end
end
return L12_12
