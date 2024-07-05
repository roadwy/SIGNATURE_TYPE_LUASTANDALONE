local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetExecutablesFromCommandLine
L1_1 = L1_1(L2_2)
for L5_5, L6_6 in L2_2(L3_3) do
  if sysio.IsFileExists(L6_6) and not mp.IsKnownFriendlyFile(L6_6, true, false) then
    mp.ReportLowfi(L6_6, 1834945633)
  end
end
return L2_2
