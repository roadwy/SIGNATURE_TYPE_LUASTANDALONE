local L1_0
function L1_0(A0_1)
  local L1_2, L2_3, L3_4, L4_5
  L1_2 = crypto
  L1_2 = L1_2.shr64
  L2_3 = A0_1
  L3_4 = 48
  L1_2 = L1_2(L2_3, L3_4)
  L2_3 = crypto
  L2_3 = L2_3.bitand
  L3_4 = crypto
  L3_4 = L3_4.shr64
  L4_5 = A0_1
  L3_4 = L3_4(L4_5, 32)
  L4_5 = 65535
  L2_3 = L2_3(L3_4, L4_5)
  L3_4 = crypto
  L3_4 = L3_4.bitand
  L4_5 = crypto
  L4_5 = L4_5.shr64
  L4_5 = L4_5(A0_1, 16)
  L3_4 = L3_4(L4_5, 65535)
  L4_5 = crypto
  L4_5 = L4_5.bitand
  L4_5 = L4_5(A0_1, 65535)
  return tostring(L1_2) .. "." .. tostring(L2_3) .. "." .. tostring(L3_4) .. "." .. tostring(L4_5)
end
Version_to_str = L1_0
