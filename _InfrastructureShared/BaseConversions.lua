local L1_0
function L1_0(A0_1, A1_2)
  local L2_3, L3_4, L4_5, L5_6
  if not A1_2 or A1_2 == 10 then
    L2_3 = tostring
    L3_4 = A0_1
    return L2_3(L3_4)
  end
  L2_3 = "0123456789abcdefghijklmnopqrstuvwxyz"
  L3_4 = {}
  L4_5 = table
  L4_5 = L4_5.insert
  repeat
    L5_6 = A0_1 % A1_2
    L5_6 = L5_6 + 1
    A0_1 = A0_1 / A1_2
    L4_5(L3_4, 1, L2_3:sub(L5_6, L5_6))
  until A0_1 == 0
  L5_6 = table
  L5_6 = L5_6.concat
  return L5_6(L3_4, "")
end
StrToBaseN = L1_0
