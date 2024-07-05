local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
if L1_1 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.match_offset
L2_2 = 78
L3_3 = mp
L3_3 = L3_3.FOOTERPAGE_SZ
L4_4 = L1_1 + L2_2
if L3_3 < L4_4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L0_0.is_footer
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.readfooter
  L4_4 = L1_1
  L3_3 = L3_3(L4_4, L2_2)
  L4_4 = L3_3
  L3_3 = L3_3.lower
  L3_3 = L3_3(L4_4)
  L4_4 = MpCommon
  L4_4 = L4_4.Base64Encode
  L4_4 = L4_4(L3_3)
  set_research_data("PDID:C:B", L4_4, false)
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
