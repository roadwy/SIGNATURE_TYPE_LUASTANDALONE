local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = TrackPidAndTechniqueBM
L1_1 = "BM"
L2_2 = "T1003.002"
L0_0(L1_1, L2_2, L3_3)
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = L0_0.command_line
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  if sysio.IsFileExists(L7_7) and not mp.IsKnownFriendlyFile(L7_7, true, false) then
    bm.add_related_file(L7_7)
  end
end
return L3_3
