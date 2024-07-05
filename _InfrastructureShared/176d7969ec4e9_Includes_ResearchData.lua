local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L0_0
L4_4 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
L2_2 = "(icacls.*(MsSense|mpssvc|mpsdrv|wdnisdrv|wdfilter|wdboot|defender).*grant[\\s\\w:\\(,]+(&|\\|\\)|\\s|$))"
L3_3 = MpCommon
L3_3 = L3_3.StringRegExpSearch
L4_4 = L2_2
L4_4 = L3_3(L4_4, L1_1)
if L4_4 then
  set_research_data("Evidence", MpCommon.Base64Encode(L4_4), false)
  return mp.INFECTED
end
return mp.CLEAN
