local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.hitcount
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.hitcount
L2_2 = hstrlog
L2_2 = L2_2[4]
L2_2 = L2_2.hitcount
L3_3 = hstrlog
L3_3 = L3_3[5]
L3_3 = L3_3.hitcount
L4_4 = hstrlog
L4_4 = L4_4[6]
L4_4 = L4_4.hitcount
L5_5 = hstrlog
L5_5 = L5_5[7]
L5_5 = L5_5.hitcount
L6_6 = hstrlog
L6_6 = L6_6[8]
L6_6 = L6_6.hitcount
L7_7 = hstrlog
L7_7 = L7_7[9]
L7_7 = L7_7.hitcount
L8_8 = hstrlog
L8_8 = L8_8[10]
L8_8 = L8_8.hitcount
L9_9 = hstrlog
L9_9 = L9_9[11]
L9_9 = L9_9.hitcount
L10_10 = hstrlog
L10_10 = L10_10[12]
L10_10 = L10_10.hitcount
L11_11 = hstrlog
L11_11 = L11_11[13]
L11_11 = L11_11.hitcount
L12_12 = hstrlog
L12_12 = L12_12[14]
L12_12 = L12_12.hitcount
L13_13 = hstrlog
L13_13 = L13_13[15]
L13_13 = L13_13.hitcount
L14_14 = hstrlog
L14_14 = L14_14[16]
L14_14 = L14_14.hitcount
L15_15 = hstrlog
L15_15 = L15_15[17]
L15_15 = L15_15.hitcount
L16_16 = hstrlog
L16_16 = L16_16[18]
L16_16 = L16_16.hitcount
L17_17 = hstrlog
L17_17 = L17_17[19]
L17_17 = L17_17.hitcount
L18_18 = hstrlog
L18_18 = L18_18[20]
L18_18 = L18_18.hitcount
L19_19 = hstrlog
L19_19 = L19_19[21]
L19_19 = L19_19.hitcount
L20_20 = {
  L21_21,
  L1_1,
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15
}
L21_21 = L0_0
L21_21 = {}
for _FORV_25_ = 1, #L20_20 do
  if L20_20[_FORV_25_] >= 30 then
    table.insert(L21_21, L20_20[_FORV_25_])
  end
end
if _FOR_ >= 3 then
  for _FORV_26_ = 1, #L21_21 do
    for _FORV_31_ = _FORV_26_ + 1, #L21_21 do
    end
  end
  if 1 <= 0 + 1 then
    mp.set_mpattribute("MHSTR:PossiblyObfuscatedString.A")
  end
end
if L0_0 >= 40 and L1_1 >= 40 and L2_2 >= 40 and L3_3 >= 40 and L0_0 == L1_1 and L0_0 == L2_2 and L0_0 == L3_3 or L2_2 >= 40 and L5_5 >= 40 and L3_3 >= 80 and L4_4 >= 80 and L2_2 == L5_5 and L3_3 == L4_4 or L6_6 >= 30 and L7_7 >= 30 and L8_8 >= 30 and L9_9 >= 30 and L6_6 == L7_7 and L6_6 == L8_8 and L6_6 == L9_9 or L3_3 >= 30 and L10_10 >= 30 and L11_11 >= 30 and L12_12 >= 30 and L0_0 >= 60 and L3_3 == L10_10 and L3_3 == L11_11 and L3_3 == L12_12 or L3_3 >= 30 and L1_1 >= 30 and L11_11 >= 30 and L12_12 >= 30 and L3_3 == L1_1 and L3_3 == L11_11 and L3_3 == L12_12 or L6_6 >= 80 and L11_11 >= 80 and L13_13 >= 40 and L8_8 >= 100 and L6_6 == L11_11 or L9_9 >= 40 and L14_14 >= 40 and L15_15 >= 40 and L2_2 >= 80 and L9_9 == L14_14 and L9_9 == L15_15 and L16_16 == 1 then
  mp.set_mpattribute("MHSTR:PossiblyObfuscatedStringForExecution.A")
end
if L17_17 >= 150 and L18_18 >= 4 and L18_18 == L19_19 + 1 then
  mp.set_mpattribute("MHSTR:PossiblyObfuscatedString.B")
end
return mp.CLEAN
