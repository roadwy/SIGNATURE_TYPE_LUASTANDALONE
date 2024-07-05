local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = mp
L2_2 = L2_2.hstr_full_log
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2[9]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = "(wmic.*path=([\"']+)?c:?\\\\*\\*?%?([\"']+)?(\\s|$))"
    L4_4 = MpCommon
    L4_4 = L4_4.StringRegExpSearch
    L5_5 = L3_3
    L5_5 = L4_4(L5_5, L1_1)
    if L4_4 == true then
      set_research_data("Evidence", MpCommon.Base64Encode(L5_5), false)
      return mp.INFECTED
    else
      return mp.CLEAN
    end
  end
end
L3_3 = MpCommon
L3_3 = L3_3.StringRegExpSearch
L4_4 = "(wmic.*extension=([\"'.*]+)?(exe|dll|bat|ps1)([\"']+)?(\\s|$))"
L5_5 = L1_1
L4_4 = L3_3(L4_4, L5_5)
if L3_3 == true then
  L5_5 = set_research_data
  L5_5("Evidence", MpCommon.Base64Encode(L4_4), false)
  L5_5 = mp
  L5_5 = L5_5.INFECTED
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
