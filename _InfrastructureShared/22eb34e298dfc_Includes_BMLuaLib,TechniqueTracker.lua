local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = TrackPidAndTechniqueBM
  L2_2 = L0_0.ppid
  L1_1(L2_2, L3_3, L4_4, L5_5)
else
  L1_1 = TrackPidAndTechniqueBM
  L2_2 = "BM"
  L1_1(L2_2, L3_3, L4_4, L5_5)
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.utf8p2
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    if sysio.IsFileExists(L7_7) then
      bm.add_related_file(L7_7)
      mp.ReportLowfi(L7_7, 3593361689)
    end
  end
end
L2_2 = ""
if L4_4 then
  L2_2 = L4_4.utf8p1
else
  L2_2 = L4_4.utf8p1
end
if L2_2 ~= nil and L2_2 ~= "" and L3_3 ~= nil and L3_3 ~= "" then
  L6_6 = L2_2
  L6_6 = L3_3
  L4_4(L5_5, L6_6)
end
L4_4()
return L4_4
