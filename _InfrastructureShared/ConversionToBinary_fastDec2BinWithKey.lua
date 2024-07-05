local L0_0
function L0_0(A0_1, A1_2)
  local L2_3
  L2_3 = {}
  function L2_3.__index()
    local L0_4, L1_5
    L0_4 = _UPVALUE0_
    return L0_4
  end
  setmetatable(A0_1, L2_3)
end
function fastDec2BinWithKey(A0_6, A1_7, A2_8, A3_9)
  local L4_10, L5_11, L6_12, L7_13, L8_14, L9_15
  L4_10 = {}
  L5_11 = string
  L5_11 = L5_11.char
  for L9_15 = 0, 255 do
    L4_10[tostring(A3_9(A2_8, L9_15))] = L5_11(L9_15)
  end
  L6_12(L7_13, L8_14)
  L9_15 = L4_10
  return L6_12(L7_13, L8_14, L9_15)
end
