local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
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
L15_15 = "%-%s-0-([1-9]%d-)%)%s-,"
L16_16 = L11_11
L15_15 = L13_13(L14_14, L15_15, L16_16)
L16_16 = tonumber
L16_16 = L16_16(L15_15, 10)
L16_16 = L16_16 + string.byte(L12_12, 1)
mp.vfo_add_buffer(fastDec2BinWithKey(L4_4, "(%d-)" .. L8_8, L16_16, function(A0_17, A1_18)
  return A0_17 + A1_18
end), "[JXSC]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
