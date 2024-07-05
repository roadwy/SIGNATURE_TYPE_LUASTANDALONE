local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[3]
L0_0 = L0_0.utf8p1
L1_1 = string
L1_1 = L1_1.lower
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.utf8p2
L1_1 = L1_1(L2_2)
L2_2 = bm_AddRelatedFileFromCommandLine
L6_6 = 1
L2_2(L3_3, L4_4, L5_5, L6_6)
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  if sysio.IsFileExists(L7_7) then
    bm.add_related_file(L7_7)
    mp.ReportLowfi(L7_7, 1212861626)
  end
end
L3_3(L4_4)
L3_3(L4_4, L5_5)
L3_3()
return L3_3
