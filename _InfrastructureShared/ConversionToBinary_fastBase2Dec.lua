local L1_0
function L1_0(A0_1, A1_2, A2_3)
  local L3_4, L4_5, L5_6
  if A2_3 > 36 or A2_3 < 2 then
    L3_4 = nil
    return L3_4
  end
  L3_4 = {}
  L4_5 = string
  L4_5 = L4_5.char
  L5_6 = {}
  function L5_6.__index(A0_7, A1_8)
    local L2_9
    L2_9 = _UPVALUE0_
    L2_9 = L2_9(tonumber(A1_8, _UPVALUE1_))
    rawset(A0_7, A1_8, L2_9)
    return L2_9
  end
  setmetatable(L3_4, L5_6)
  return A0_1:upper():gsub(A1_2, L3_4)
end
fastBase2Dec = L1_0
