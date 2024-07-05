local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.FOOTERPAGE_SZ
L1_1 = L1_1 * 3
if L0_0 < L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "= ?\"(.-)\""
L4_4 = L2_2(L3_3, L4_4)
L5_5 = #L4_4
L6_6 = mp
L6_6 = L6_6.FOOTERPAGE_SZ
if L5_5 < L6_6 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L1_1
L7_7 = "= ?\"(.-)\""
L8_8 = L3_3
L7_7 = L5_5(L6_6, L7_7, L8_8)
L8_8 = #L7_7
if not (L8_8 < 1) then
  L8_8 = #L7_7
  L9_9 = #L4_4
elseif L8_8 >= L9_9 then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = string
L8_8 = L8_8.gsub
L9_9 = L7_7
L10_10 = "([%.%$%%%^%+%-%*%?%(%)%{%}%[%]])"
L11_11 = "%%%1"
L9_9 = L8_8(L9_9, L10_10, L11_11)
L11_11 = L4_4
L10_10 = L4_4.match
L12_12 = L8_8
L10_10 = L10_10(L11_11, L12_12)
if L10_10 == nil then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = string
L10_10 = L10_10.find
L11_11 = L1_1
L12_12 = "= ?\"(.-)\""
L13_13 = L6_6
L12_12 = L10_10(L11_11, L12_12, L13_13)
L13_13 = #L12_12
if not (L13_13 < 1) then
  L13_13 = #L12_12
  L14_14 = #L4_4
elseif L13_13 >= L14_14 then
  L13_13 = mp
  L13_13 = L13_13.CLEAN
  return L13_13
end
L13_13 = string
L13_13 = L13_13.find
L14_14 = L1_1
L15_15 = "=%s-0-([1-9]%d-)%s-[^0-9]"
L16_16 = L11_11
L15_15 = L13_13(L14_14, L15_15, L16_16)
L16_16 = tonumber
L17_17 = L15_15
L18_18 = 10
L16_16 = L16_16(L17_17, L18_18)
L17_17 = #L12_12
if L16_16 ~= L17_17 or L16_16 > 40 then
  L17_17 = mp
  L17_17 = L17_17.CLEAN
  return L17_17
end
L17_17 = "1,2,3,4,5,6,1,1,6,2,8,3,10,4,12,6,11,16,3,8,14,21,5,11,19,26,7,15,23,2,10,19,3,29,13,4,23,15,35,26"
L18_18 = {}
for L22_22 in L19_19(L20_20, L21_21) do
  table.insert(L18_18, L22_22)
end
L22_22 = L4_4
L22_22 = "[JXSC2]"
L20_20(L21_21, L22_22, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return L20_20
