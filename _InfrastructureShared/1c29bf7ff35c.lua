local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L2_2 = ""
L3_3 = ""
if L0_0.is_header then
  L2_2 = tostring(headerpage):sub(L1_1 - 6, L1_1 + 5)
  L3_3 = tostring(headerpage)
else
  L2_2 = tostring(footerpage):sub(L1_1 - 6, L1_1 + 5)
  L3_3 = tostring(footerpage)
end
L3_3 = string.lower(L3_3)
if string.find(L3_3, "sentinel", 1, true) then
  return mp.CLEAN
end
if string.find(L2_2, "{%d%d?}{%d%d?}\"%-f'$") then
  mp.set_mpattribute("MpIsExhaustiveScriptScan")
  return mp.INFECTED
end
L2_2 = string.gsub(L2_2, " ", "")
if string.find(L2_2, "{%d%d?}{%d%d?}\"%-f$") then
  mp.set_mpattribute("MpIsExhaustiveScriptScan")
  return mp.INFECTED
end
return mp.CLEAN
