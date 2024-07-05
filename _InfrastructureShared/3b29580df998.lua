local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = tostring
L2_2 = headerpage
L5_5 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1(L2_2))
L2_2 = L0_0
L1_1 = L0_0.match
L3_3 = "==(%w+)msscriptcontrol.scriptcontrol"
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.GetBruteMatchData
L2_2 = L2_2()
L3_3 = L2_2.match_offset
L3_3 = L3_3 + 1
L4_4 = 95
L5_5 = ""
if L2_2.is_header then
  L5_5 = L0_0:sub(L3_3, L3_3 + L4_4)
else
  L5_5 = string.lower(tostring(footerpage):sub(L3_3, L3_3 + L4_4))
end
if L1_1 ~= nil and L5_5:match(L1_1) then
  return mp.INFECTED
end
return mp.CLEAN
