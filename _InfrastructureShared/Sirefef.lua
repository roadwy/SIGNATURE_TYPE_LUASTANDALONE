local L1_0
function L1_0(A0_1)
  local L1_2, L2_3, L3_4, L4_5
  L1_2 = ""
  for _FORV_5_ = 0, 7 do
    L1_2 = L1_2 .. string.char(bitand(crypto.shr64(A0_1, _FORV_5_ * 8), 255))
  end
  return L1_2
end
Int64ToByteString = L1_0
