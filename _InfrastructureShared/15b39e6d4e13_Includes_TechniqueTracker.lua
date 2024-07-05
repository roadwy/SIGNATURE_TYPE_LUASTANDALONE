local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = TrackPidAndTechniqueBM
L1_1 = "BM"
L2_2 = "T1003.002"
L3_3 = "credentialdumping"
L0_0(L1_1, L2_2, L3_3)
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 then
  L2_2 = L1_1.command_line
  if L2_2 ~= nil then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L4_4)
    L2_2 = L3_3
    L3_3 = mp
    L3_3 = L3_3.GetExecutablesFromCommandLine
    L3_3 = L3_3(L4_4)
    for L7_7, L8_8 in L4_4(L5_5) do
      L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
      if sysio.IsFileExists(L8_8) then
        bm.add_related_file(L8_8)
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
