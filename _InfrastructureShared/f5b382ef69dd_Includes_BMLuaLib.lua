local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p2
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    if sysio.IsFileExists(L6_6) then
      bm.add_related_file(L6_6)
      mp.ReportLowfi(L6_6, 2703845775)
    end
  end
  L2_2()
  return L2_2
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
