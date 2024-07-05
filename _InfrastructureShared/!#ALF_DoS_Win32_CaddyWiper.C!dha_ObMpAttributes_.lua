local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 < 2 or L0_0 > 5 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 5
L1_1 = L1_1(L2_2, L3_3)
L2_2 = L1_1 + 32
L3_3 = mp
L3_3 = L3_3.HEADERPAGE_SZ
if L2_2 > L3_3 or L1_1 == 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = headerpage
L5_5 = 9
L3_3 = L3_3(L4_4, L5_5)
if L2_2 < L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = "U\139\236"
L5_5 = string
L5_5 = L5_5.len
L6_6 = L4_4
L5_5 = L5_5(L6_6)
L6_6 = 20
L7_7 = 0
L8_8 = mp
L8_8 = L8_8.readheader
L8_8 = L8_8(L9_9, L10_10)
for L12_12 = 1, L6_6 do
  _t = L13_13
  L7_7 = L13_13
end
L12_12 = mp
L12_12 = L12_12.readheader
L12_12 = L12_12(L13_13, L14_14)
for L16_16 = 1, L5_5 do
end
if L9_9 ~= L4_4 then
  return L13_13
end
for L18_18 = 1, L6_6 do
  L20_20 = L14_14
  L20_20 = L11_11
end
for L20_20 = 1, L5_5 do
end
if L15_15 ~= L4_4 then
  return L17_17
end
return L17_17
