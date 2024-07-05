local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L8_8 = L2_2()
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2())
  L2_2 = string
  L2_2 = L2_2.match
  L3_3 = L1_1
  L2_2 = L2_2(L3_3, L4_4)
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = tostring
    L8_8 = L3_3(L4_4)
    L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4))
    L3_3 = mp
    L3_3 = L3_3.GetExecutablesFromCommandLine
    L3_3 = L3_3(L4_4)
    for L7_7, L8_8 in L4_4(L5_5) do
      L8_8 = mp.ContextualExpandEnvironmentVariables(L8_8)
      if sysio.IsFileExists(L8_8) then
        mp.ReportLowfi(L8_8, 2199264473)
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
