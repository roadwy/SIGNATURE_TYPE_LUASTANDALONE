local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L6_6 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1(L2_2, L3_3))
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L1_1(L2_2)
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(L2_2)
L0_0 = L1_1
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
L1_1 = L1_1.CLEAN
return L1_1
