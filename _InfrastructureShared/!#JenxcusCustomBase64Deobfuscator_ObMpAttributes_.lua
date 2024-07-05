local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 1024 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 2097152 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = tostring
L3_3 = headerpage
L2_2 = L2_2(L3_3)
L3_3 = "\"[A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/]"
L2_2 = L1_1(L2_2, L3_3)
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = false
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
L3_3 = L3_3 - L1_1
L4_4 = mp
L4_4 = L4_4.readfile
L5_5 = L1_1
L6_6 = L3_3
L4_4 = L4_4(L5_5, L6_6)
L5_5 = L4_4
L4_4 = L4_4.gsub
L6_6 = "\"%).+"
L7_7 = ""
L4_4 = L4_4(L5_5, L6_6, L7_7)
L5_5 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
L6_6 = {}
L7_7 = string
L7_7 = L7_7.char
L8_8 = L5_5.len
L8_8 = L8_8(L9_9)
for L12_12 = 1, L8_8 do
  L14_14 = L5_5
  L13_13 = L5_5.byte
  L15_15 = L12_12
  L13_13 = L13_13(L14_14, L15_15)
  L14_14 = 10 + L12_12
  if L8_8 < L14_14 then
    L15_15 = L14_14 - 1
    L15_15 = L15_15 - L8_8
    L14_14 = 1 + L15_15
  end
  L15_15 = L5_5.byte
  L15_15 = L15_15(L5_5, L14_14)
  L13_13 = L7_7(L13_13)
  L15_15 = L7_7(L15_15)
  L6_6[L13_13] = L15_15
end
L12_12 = L6_6
L12_12 = "//MpBase64DecodeLongLines"
L11_11(L12_12)
L12_12 = L9_9
L13_13 = "[JXSC64]"
L14_14 = mp
L14_14 = L14_14.ADD_VFO_TAKE_ACTION_ON_DAD
L11_11(L12_12, L13_13, L14_14)
return L11_11
