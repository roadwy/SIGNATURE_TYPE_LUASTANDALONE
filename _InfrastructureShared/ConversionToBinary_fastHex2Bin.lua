local L1_0
function L1_0(A0_1, A1_2)
  local L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9
  L2_3 = {}
  L3_4 = string
  L3_4 = L3_4.char
  L4_5 = string
  L4_5 = L4_5.format
  for L8_9 = 0, 255 do
    L2_3[L4_5("%02X", L8_9)] = L3_4(L8_9)
  end
  L8_9 = L2_3
  return L5_6(L6_7, L7_8, L8_9)
end
fastHex2Bin = L1_0
