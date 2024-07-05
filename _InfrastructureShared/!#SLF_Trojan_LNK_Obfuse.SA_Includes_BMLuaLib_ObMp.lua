local L0_0, L1_1
function L0_0(A0_2)
  local L2_3, L3_4, L4_5, L5_6, L6_7, L7_8
  L2_3 = 0
  if not A0_2 then
    return L2_3
  end
  for L6_7 in A0_2, nil, nil do
    L2_3 = L2_3 + 1
  end
  return L2_3
end
L1_1 = nil
if not mp.get_mpattribute("PACKED_WITH:[CMDEmbedded]") then
  return mp.CLEAN
end
L1_1 = tostring(headerpage)
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if L0_0(string.gmatch(L1_1, "||")) >= 3 or L0_0(string.gmatch(L1_1, "&")) >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
