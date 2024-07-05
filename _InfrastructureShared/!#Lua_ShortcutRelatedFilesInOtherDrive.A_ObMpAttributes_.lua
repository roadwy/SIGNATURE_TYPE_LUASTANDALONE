local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = tostring
  L2_2 = headerpage
  L1_1 = L1_1(L2_2)
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = string
    L8_8 = L8_8.lower
    L8_8 = L8_8(mp.ContextualExpandEnvironmentVariables(L7_7))
    if sysio.IsFileExists(L8_8) then
      mp.ReportLowfi(L8_8, 1875954900)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
