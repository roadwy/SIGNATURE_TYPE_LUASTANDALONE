local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FULL
L1_1 = L1_1(L2_2)
if L1_1 ~= "/etc/ld.so.preload" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = tostring
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  return L3_3
end
L6_6 = "\n"
L7_7 = L4_4(L5_5, L6_6)
for L6_6, L7_7 in L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5, L6_6)) do
  if L7_7 ~= nil and L7_7 ~= "" and sysio.IsFileExists(L7_7) then
    mp.ReportLowfi(L7_7, 4017216192)
  end
end
return L3_3
