local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.lower
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L2_2 = L0_0
L1_1 = L0_0.find
L3_3 = "^\\device\\cdrom[0-9][0-9]?$"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = false
L2_2, L3_3 = nil, nil
L4_4 = mp
L4_4 = L4_4.GetLnkInfo
L4_4 = L4_4()
L2_2 = L4_4
L3_3 = L2_2.BasePath
if L3_3 then
  L4_4 = mp
  L4_4 = L4_4.ContextualExpandEnvironmentVariables
  L4_4 = L4_4(L5_5)
  L3_3 = L4_4
  L4_4 = L3_3.lower
  L4_4 = L4_4(L5_5)
  L3_3 = L4_4
  L4_4 = MpCommon
  L4_4 = L4_4.ExpandEnvironmentVariables
  L4_4 = L4_4(L5_5)
  if L4_4 then
    L4_4 = L5_5
    L8_8 = 2
    if L5_5 == L4_4 then
      L5_5(L6_6)
      L1_1 = true
    end
  end
end
if not L1_1 then
  L4_4 = L2_2.RelativePath
  if L4_4 then
    if L5_5 then
      L5_5(L6_6)
      L1_1 = true
    end
  end
end
if L1_1 then
  if L3_3 then
    L4_4 = mp
    L4_4 = L4_4.IsKnownFriendlyFile
    L4_4 = L4_4(L5_5, L6_6, L7_7)
    if not L4_4 then
      L4_4 = mp
      L4_4 = L4_4.ReportLowfi
      L4_4(L5_5, L6_6)
    end
  end
  if L2_2 then
    L4_4 = L2_2.Arguments
    if L4_4 then
      L4_4 = mp
      L4_4 = L4_4.GetExecutablesFromCommandLine
      L4_4 = L4_4(L5_5)
      if L4_4 then
        for L8_8, L9_9 in L5_5(L6_6) do
          L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
          if sysio.IsFileExists(L9_9) and not mp.IsKnownFriendlyFile(L3_3, false, false) then
            mp.ReportLowfi(L9_9, 441180191)
          end
        end
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
