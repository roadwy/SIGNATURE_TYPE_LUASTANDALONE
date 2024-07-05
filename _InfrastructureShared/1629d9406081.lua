local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = ""
L1_1 = mp
L1_1 = L1_1.GetBruteMatchData
L1_1 = L1_1()
L2_2 = L1_1.match_offset
L2_2 = L2_2 + 1
L3_3 = L1_1.match_offset
L3_3 = L3_3 + 1
L3_3 = L3_3 + 512
L4_4 = L1_1.is_header
if L4_4 then
  L4_4 = tostring
  L4_4 = L4_4(headerpage)
  L4_4 = L4_4.sub
  L4_4 = L4_4(L4_4, L2_2, L3_3)
  L4_4 = L4_4.lower
  L4_4 = L4_4(L4_4)
  L0_0 = L4_4
else
  L4_4 = tostring
  L4_4 = L4_4(footerpage)
  L4_4 = L4_4.sub
  L4_4 = L4_4(L4_4, L2_2, L3_3)
  L4_4 = L4_4.lower
  L4_4 = L4_4(L4_4)
  L0_0 = L4_4
end
L4_4 = L0_0.match
L4_4 = L4_4(L0_0, "([^:]+:)")
if not L4_4 then
  return mp.CLEAN
end
if not (string.len(L4_4) < string.len(L0_0)) then
  return mp.CLEAN
end
if L4_4:find("post/owa/", 1, true) and L4_4:find("powershell", 1, true) and L0_0:find("x-owa-explicitlogonuser:", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
