local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.FOOTERPAGE_SZ
if L0_0 < 4096 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.readu_u32
  L1_1 = footerpage
  L2_2 = mp
  L2_2 = L2_2.FOOTERPAGE_SZ
  L2_2 = L2_2 - 4
  L0_0 = L0_0(L1_1, L2_2)
elseif L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = 10
L1_1 = 8
L2_2 = mp
L2_2 = L2_2.readheader
L3_3 = 0
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readfooter
L4_4 = mp
L4_4 = L4_4.FOOTERPAGE_SZ
L4_4 = L4_4 - L0_0
L5_5 = L0_0
L3_3 = L3_3(L4_4, L5_5)
L4_4 = 0
L5_5 = 0
L6_6 = ""
for L10_10 = 1, L1_1 do
  L5_5 = L11_11
  for L14_14 = 1, L0_0 do
    L4_4 = mp.bitand(string.byte(L3_3, L14_14) + (L10_10 - 1) * (L14_14 - 1), 255)
    L5_5 = mp.bitxor(L5_5, L4_4)
  end
  L6_6 = L11_11 .. L12_12
end
if L7_7 == L8_8 then
  if L7_7 == 9460301 then
    return L7_7
  end
end
return L7_7
