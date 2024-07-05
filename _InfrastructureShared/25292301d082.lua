local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 47 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetBruteMatchData
L0_0 = L0_0()
L1_1 = L0_0.match_offset
L1_1 = L1_1 + 26
L2_2 = 16
L3_3 = ""
L4_4 = L0_0.is_header
if L4_4 then
  L4_4 = tostring
  L5_5 = headerpage
  L4_4 = L4_4(L5_5)
  L5_5 = L4_4
  L4_4 = L4_4.sub
  L6_6 = L1_1
  L4_4 = L4_4(L5_5, L6_6, L1_1 + L2_2)
  L3_3 = L4_4
else
  L4_4 = tostring
  L5_5 = footerpage
  L4_4 = L4_4(L5_5)
  L5_5 = L4_4
  L4_4 = L4_4.sub
  L6_6 = L1_1
  L4_4 = L4_4(L5_5, L6_6, L1_1 + L2_2)
  L3_3 = L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L3_3
L6_6 = "(%d+)"
L6_6 = L4_4(L5_5, L6_6)
if L6_6 ~= nil and tonumber(L6_6) >= 5 then
  return mp.INFECTED
end
return mp.CLEAN
