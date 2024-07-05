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
function fastDec2Bin(A0_6, A1_7)
  local L2_8, L3_9, L4_10, L5_11, L6_12, L7_13
  L2_8 = {}
  L3_9 = string
  L3_9 = L3_9.char
  for L7_13 = 0, 255 do
    L2_8[tostring(L7_13)] = L3_9(L7_13)
  end
  L4_10(L5_11, L6_12)
  L7_13 = L2_8
  return L4_10(L5_11, L6_12, L7_13)
end
