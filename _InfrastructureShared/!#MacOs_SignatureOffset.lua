local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = macho
L0_0 = L0_0.GetSegment
L1_1 = "LC_CODE_SIGNATURE"
L2_2 = 8
L3_3 = 4
L0_0 = L0_0(L1_1, L2_2, L3_3)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 0
L2_2 = 0
L3_3 = 256
for L7_7 = L4_4(L5_5), 1, -1 do
  L2_2 = string.byte(L0_0, L7_7)
  L1_1 = L1_1 * L3_3 + L2_2
end
L4_4(L5_5, L6_6)
return L4_4
