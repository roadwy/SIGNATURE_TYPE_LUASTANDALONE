local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "MpIsIISWmiAmsiScan"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = mp
L1_1 = L1_1.GetBruteMatchData
L1_1 = L1_1()
L2_2 = L1_1.is_header
if L2_2 then
  L2_2 = tostring
  L3_3 = headerpage
  L2_2 = L2_2(L3_3)
  L3_3 = L2_2
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
else
  L2_2 = tostring
  L3_3 = footerpage
  L2_2 = L2_2(L3_3)
  L3_3 = L2_2
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
end
L3_3 = L0_0
L2_2 = L0_0.match
L2_2 = L2_2(L3_3, "setpropvalue.commandline%(\"(.*)\"%);")
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(mp.CONTEXT_DATA_AMSI_OPERATION_PPID)
if L3_3 then
  TT_SendBMSigTrigger(L3_3, "IISWMIExec", L2_2)
end
set_research_data("IISWMIExec", L2_2, false)
return mp.INFECTED
