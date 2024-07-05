local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = false
L1_1 = mp
L1_1 = L1_1.GetBruteMatchData
L1_1 = L1_1()
L2_2 = L1_1.match_offset
L2_2 = L2_2 + 1
L3_3 = L1_1.match_offset
L3_3 = L3_3 + 1
L3_3 = L3_3 + 512
L4_4 = tostring
L5_5 = L1_1.is_header
if L5_5 then
  L5_5 = headerpage
else
  L5_5 = L5_5 or footerpage
end
L4_4 = L4_4(L5_5)
L5_5 = L4_4
L4_4 = L4_4.sub
L4_4 = L4_4(L5_5, L6_6, L7_7)
L5_5 = L4_4
L4_4 = L4_4.lower
L4_4 = L4_4(L5_5)
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.GetExecutablesFromCommandLine
L5_5 = L5_5(L6_6)
for L9_9, L10_10 in L6_6(L7_7) do
  if sysio.IsFileExists(L10_10) and not mp.IsKnownFriendlyFile(L10_10, false, false) and string.find(L10_10, ".dll", -4, true) then
    mp.ReportLowfi(L10_10, 3071065115)
    AppendToRollingQueue("SuspTransportAgent", L10_10, 1, 86400, 10)
    L0_0 = true
  end
end
if L0_0 then
  return L6_6
end
return L6_6
