local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_AMSI_APPNAME
L2_2 = L1_1(L2_2, L3_3)
if L1_1 then
  if L2_2 ~= "SQL Server AMSI Agent" then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = pcall
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L4_4 = L3_3(L4_4, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
  if L3_3 and L4_4 ~= nil then
    mp.SetAmsiReportPath(L4_4)
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
