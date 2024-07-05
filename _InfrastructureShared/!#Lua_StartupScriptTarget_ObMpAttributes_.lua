local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L11_11 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L1_1 = #L0_0
  if not (L1_1 <= 3) then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "."
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1.bat = 372652227
L1_1.cmd = 372652227
L1_1.pif = 2403297657
L1_1.vbe = 4164442607
L1_1.vbs = 4164442607
L1_1[".js"] = 1717357644
L1_1.jse = 1717357644
L1_1.wsh = 291241178
L1_1.wsf = 291241178
L1_1.ps1 = 2287119712
L1_1.hta = 4283801078
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L0_0
L4_4 = -3
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L3_3 = #L2_2
  if not (L3_3 <= 2) then
    L3_3 = L1_1[L2_2]
  end
elseif L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L1_1[L2_2]
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_SCANREASON
L4_4 = L4_4(L5_5)
L5_5 = mp
L5_5 = L5_5.SCANREASON_ONMODIFIEDHANDLECLOSE
if L4_4 == L5_5 then
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = tostring
  L11_11 = L6_6(L7_7)
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L6_6(L7_7))
  L6_6 = mp
  L6_6 = L6_6.GetExecutablesFromCommandLine
  L6_6 = L6_6(L7_7)
  for L10_10, L11_11 in L7_7(L8_8) do
    L11_11 = mp.ContextualExpandEnvironmentVariables(L11_11)
    if sysio.IsFileExists(L11_11) then
      mp.ReportLowfi(L11_11, L3_3)
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
