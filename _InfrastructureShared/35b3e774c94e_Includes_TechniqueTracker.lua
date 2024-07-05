local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = pcall
L2_2 = bm
L2_2 = L2_2.get_current_process_startup_info
L2_2 = L1_1(L2_2)
L3_3 = nil
if L1_1 then
  L0_0 = L2_2.command_line
  L3_3 = L2_2.ppid
end
if L0_0 ~= nil and L3_3 ~= nil then
  L4_4 = mp
  L4_4 = L4_4.GetExecutablesFromCommandLine
  L4_4 = L4_4(L5_5)
  for L8_8, L9_9 in L5_5(L6_6) do
    L9_9 = mp.ContextualExpandEnvironmentVariables(L9_9)
    if sysio.IsFileExists(L9_9) and not mp.IsKnownFriendlyFile(L9_9, true, false) then
      bm.add_related_file(L9_9)
    end
  end
  L8_8 = "susp_dll_loaded"
  L5_5(L6_6, L7_7, L8_8)
  return L5_5
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
