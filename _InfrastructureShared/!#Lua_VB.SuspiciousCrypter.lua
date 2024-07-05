local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = epcode
L0_0 = L0_0[1]
if L0_0 ~= 104 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pehdr
L0_0 = L0_0.ImageBase
if L0_0 ~= 4194304 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = epcode
L3_3 = 2
L1_1 = L1_1(L2_2, L3_3)
if L0_0 > L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = L1_1 - L0_0
L4_4 = 52
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L2_2
L5_5 = 1
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 557138518 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L2_2
L5_5 = 45
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = L2_2
L6_6 = 49
L4_4 = L4_4(L5_5, L6_6)
if L0_0 > L4_4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.readfile
L6_6 = L4_4 - L0_0
L7_7 = 8
L5_5 = L5_5(L6_6, L7_7)
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = L5_5
L8_8 = 1
L6_6 = L6_6(L7_7, L8_8)
if L6_6 ~= 500 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.readu_u32
L7_7 = L5_5
L8_8 = 5
L6_6 = L6_6(L7_7, L8_8)
if L0_0 > L6_6 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = mp
L7_7 = L7_7.readfile
L8_8 = L6_6 - L0_0
L9_9 = 68
L7_7 = L7_7(L8_8, L9_9)
L8_8 = mp
L8_8 = L8_8.readu_u16
L9_9 = L7_7
L10_10 = 43
L8_8 = L8_8(L9_9, L10_10)
L9_9 = 0
L10_10 = mp
L10_10 = L10_10.readu_u32
L11_11 = L7_7
L12_12 = 49
L10_10 = L10_10(L11_11, L12_12)
if L0_0 > L10_10 then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = 50
L12_12 = false
if L8_8 <= L11_11 then
  L11_11 = L8_8 - 1
end
for L16_16 = 0, L11_11 do
  L17_17 = mp
  L17_17 = L17_17.readfile
  L17_17 = L17_17(L10_10 - L0_0 + L16_16 * 48, 32)
  if mp.readu_u32(L17_17, 29) == 0 and not L12_12 then
    mp.set_mpattribute("Lua:VB.ObjectWithNoMethods")
    L12_12 = true
  end
  L9_9 = L9_9 + mp.readu_u32(L17_17, 29)
end
if L13_13 > 393216 then
  L14_14(L15_15)
end
L16_16 = tostring
L17_17 = L9_9
L16_16 = L16_16(L17_17)
L14_14(L15_15)
L16_16 = tostring
L17_17 = L8_8
L16_16 = L16_16(L17_17)
L14_14(L15_15)
if L9_9 >= 25 and L9_9 <= 35 and (L8_8 == 2 or L8_8 == 3) and L3_3 == 0 then
  L14_14(L15_15)
elseif L9_9 >= 45 and L9_9 <= 68 and (L8_8 == 2 or L8_8 == 3) and L3_3 == 0 then
  L14_14(L15_15)
elseif L9_9 >= 38 and L9_9 <= 68 and L8_8 >= 2 and L8_8 <= 5 and L13_13 > 393216 then
  L14_14(L15_15)
elseif L9_9 == 0 and L8_8 >= 5 and L8_8 <= 8 and L13_13 > 393216 then
  L14_14(L15_15)
elseif L9_9 == 23 and L8_8 == 2 and L3_3 == 0 then
  L14_14(L15_15)
elseif L9_9 == 0 and (L8_8 == 3 or L8_8 == 4) and L13_13 > 413696 then
  L14_14(L15_15)
elseif L9_9 == 0 and L8_8 >= 9 and L8_8 <= 12 and L13_13 > 393216 then
  L14_14(L15_15)
elseif L9_9 == 0 and L8_8 >= 24 then
  L14_14(L15_15)
elseif L9_9 == 147 and L8_8 == 14 then
  L14_14(L15_15)
end
return L14_14
