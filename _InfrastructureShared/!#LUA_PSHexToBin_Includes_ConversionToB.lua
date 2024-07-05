local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 8192 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = tostring
L3_3 = headerpage
L7_7 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.gsub
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L2_2
L2_2 = ""
L3_3 = 0
for L7_7 in L4_4(L5_5, L6_6) do
  L7_7 = string.gsub(L7_7, "0x", "")
  L7_7 = string.gsub(L7_7, ",", "")
  L2_2 = L2_2 .. L7_7
  L3_3 = L3_3 + 1
end
if not (L3_3 > 1) then
elseif L4_4 > 256 then
  L7_7 = "([0-9A-Fa-f][0-9A-Fa-f])"
  L7_7 = mp
  L7_7 = L7_7.ADD_VFO_TAKE_ACTION_ON_DAD
  L4_4(L5_5, L6_6, L7_7)
end
return L4_4
