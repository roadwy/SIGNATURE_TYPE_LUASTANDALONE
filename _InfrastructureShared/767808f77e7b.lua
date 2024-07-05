local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_PATH
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = sysio
  L1_1 = L1_1.FindFiles
  L1_1 = L1_1(L2_2, L3_3, L4_4)
  if L1_1 then
    for L5_5, L6_6 in L2_2(L3_3) do
      mp.ReportLowfi(L6_6, 3390914334)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
