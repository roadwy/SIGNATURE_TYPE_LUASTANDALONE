local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
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
while true do
  L5_5 = string
  L5_5 = L5_5.len
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  if L5_5 < 800 then
    L5_5 = string
    L5_5 = L5_5.find
    L6_6 = L1_1
    L7_7 = "= ?\"(.-)\""
    L8_8 = L3_3 + 2
    L7_7 = L5_5(L6_6, L7_7, L8_8)
    L4_4 = L7_7
    L3_3 = L6_6
    L2_2 = L5_5
  end
end
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
L7_7 = "= ?%(?\"(.-)\""
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
L12_12 = "= ?%(?\"(.-)\""
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
function L13_13(A0_15, A1_16)
  local L2_17, L3_18, L4_19, L5_20, L6_21, L7_22, L8_23, L9_24, L10_25, L11_26, L12_27, L13_28, L14_29
  L2_17 = {}
  L3_18 = {}
  L4_19 = {}
  L5_20 = 0
  L6_21 = A1_16.rep
  L6_21 = L6_21(L7_22, L8_23)
  L6_21 = L6_21.sub
  L6_21 = L6_21(L7_22, L8_23, L9_24)
  for L10_25 in L7_22(L8_23, L9_24) do
    L2_17[L5_20] = L5_20
    L3_18[L5_20] = L11_26
    L5_20 = L5_20 + 1
  end
  for L11_26 = 0, 255 do
    L2_17[L7_22] = L13_28
    L2_17[L11_26] = L12_27
  end
  for L13_28 = 1, 3072 do
    L14_29 = L8_23 + 1
    L14_29 = L2_17[L8_23]
    L14_29 = L9_24 + L14_29
    L14_29 = L2_17[L9_24]
    L2_17[L9_24] = L2_17[L8_23]
    L2_17[L8_23] = L14_29
  end
  for L14_29 = 1, #A0_15 do
    L2_17[L8_23], L2_17[L9_24] = L2_17[L9_24], L2_17[L8_23]
    L4_19[#L4_19 + 1] = L10_25(mp.bitxor(L2_17[(L2_17[L8_23] + L2_17[L9_24]) % 255], A0_15:sub(L14_29, L14_29):byte()))
  end
  return L11_26(L12_27, L13_28)
end
L14_14 = mp
L14_14 = L14_14.bitxor
L14_14 = L14_14(L13_13("0", L12_12):byte(), 48)
mp.vfo_add_buffer(fastDec2BinWithKey(L4_4, "(%d-)" .. L8_8, L14_14, mp.bitxor), "[JXSC3]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
