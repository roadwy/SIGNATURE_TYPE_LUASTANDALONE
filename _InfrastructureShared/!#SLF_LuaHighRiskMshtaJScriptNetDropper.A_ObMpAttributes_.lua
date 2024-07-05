local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
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
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L10_10 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L1_1(L2_2))
if L0_0 ~= "mshta.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FULL
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L10_10 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L2_2(L3_3, L4_4))
L2_2 = MpCommon
L2_2 = L2_2.QueryPersistContext
L3_3 = L1_1
L4_4 = "Lua:ExeDroppedByJsc"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.set_mpattribute
L4_4 = "Lua:MshtaJScriptNet.A"
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.get_contextdata
L4_4 = mp
L4_4 = L4_4.CONTEXT_DATA_PROCESS_PPID
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.GetProcessCommandLine
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.GetExecutablesFromCommandLine
  L5_5 = L5_5(L6_6)
  for L9_9, L10_10 in L6_6(L7_7) do
    L10_10 = mp.ContextualExpandEnvironmentVariables(L10_10)
    if sysio.IsFileExists(L10_10) and MpCommon.QueryPersistContext(L10_10, "Lua:HighRiskHtaWebVector") then
      return mp.INFECTED
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
