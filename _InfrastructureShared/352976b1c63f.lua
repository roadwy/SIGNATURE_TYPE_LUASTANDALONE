local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 1
L2_2 = L0_0.match_offset
L2_2 = L2_2 + 1
L2_2 = L2_2 + 1024
L3_3 = tostring
L4_4 = L0_0.is_header
if L4_4 then
  L4_4 = headerpage
else
  L4_4 = L4_4 or footerpage
end
L3_3 = L3_3(L4_4)
L4_4 = L3_3
L3_3 = L3_3.sub
L3_3 = L3_3(L4_4, L5_5, L6_6)
L4_4 = L3_3
L3_3 = L3_3.lower
L3_3 = L3_3(L4_4)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetExecutablesFromCommandLine
L4_4 = L4_4(L5_5)
for L8_8, L9_9 in L5_5(L6_6) do
  if L9_9:find("insert.ps1", 1, true) or L9_9:find("get-bitlockerkeys.ps1", 1, true) then
    return mp.CLEAN
  end
  if sysio.IsFileExists(L9_9) and not mp.IsKnownFriendlyFile(L9_9, false, false) then
    mp.ReportLowfi(L9_9, 443472619)
  end
end
return L5_5
