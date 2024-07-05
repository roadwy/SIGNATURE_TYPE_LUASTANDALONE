local L1_0
function L1_0(A0_1, A1_2, A2_3, A3_4)
  local L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11
  L4_5 = {}
  L5_6 = nil
  L6_7 = string
  L6_7 = L6_7.char
  for L10_11 = 0, 255 do
    L4_5[L6_7(A3_4(A2_3, L10_11))] = L6_7(L10_11)
  end
  L10_11 = L4_5
  return L7_8(L8_9, L9_10, L10_11)
end
fastBinaryTransform = L1_0
