local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 10000 or L0_0 > 100000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = footerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "createelement%((.-)%)\r\n"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  "4"
}
L4_4 = "b"
L5_5 = "i"
L6_6 = "n"
L10_10 = "s"
L11_11 = "e"
L12_12 = "6"
function L4_4(A0_13, A1_14)
  return A0_13 + A1_14
end
L5_5 = {}
L6_6 = 1
for L10_10, L11_11 in L7_7(L8_8, L9_9) do
  L12_12 = L4_4
  L12_12 = L12_12(L10_10, L11_11)
  L5_5[L6_6] = string.char(L12_12)
  if L5_5[L6_6] ~= L3_3[L6_6] then
    return mp.CLEAN
  end
  L6_6 = L6_6 + 1
end
return L7_7
