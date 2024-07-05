local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L0_0 = L1_1[1]
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L0_0 = L1_1[2]
  else
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = L0_0.utf8p2
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "[/-]e:([%a]+)"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3.jscript = ".js"
L3_3.javascript = ".js"
L3_3.vbscript = ".vbs"
L3_3.vbs = ".vbs"
L4_4 = L3_3[L2_2]
if not L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.GetExecutablesFromCommandLine
L5_5 = L5_5(L6_6)
for L9_9, L10_10 in L6_6(L7_7) do
  if string.match(L10_10, "(%.[^%.]+)$") ~= L4_4 and string.lower(string.match(L10_10, "([^\\]+)$")) ~= "wscript.exe" and string.lower(string.match(L10_10, "([^\\]+)$")) ~= "cscript.exe" and not string.lower(string.match(L10_10, "([^\\]+)$")).find("capainstaller", 1, true) and sysio.IsFileExists(L10_10) and not mp.IsKnownFriendlyFile(L10_10, false, false) then
    mp.ReportLowfi(L10_10, 4091252919)
  end
end
return L6_6
