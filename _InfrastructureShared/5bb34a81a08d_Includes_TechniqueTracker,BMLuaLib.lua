local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.command_line
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  return L3_3
end
for L6_6, L7_7 in L3_3(L4_4) do
  if L7_7 and sysio.IsFileExists(L7_7) and isTainted(L7_7, "remote_file_created_taint") then
    addRelatedProcess()
    reportRelatedBmHits()
    TrackPidAndTechniqueBM("BM", "T1059", "Execution_CommandandScriptingInterpreter_RemoteScriptExecution")
    return mp.INFECTED
  end
end
return L3_3
