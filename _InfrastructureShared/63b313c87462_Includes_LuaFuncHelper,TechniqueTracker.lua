local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L2_2 = L2_2.utf8p2
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
function L1_1(A0_8)
  local L1_9, L2_10, L3_11, L4_12, L5_13
  L1_9 = {}
  for L5_13 in L2_10(L3_11, L4_12) do
    table.insert(L1_9, L5_13)
  end
  return L1_9
end
if L0_0 ~= nil then
  L2_2 = L1_1
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    if string.match(L7_7, "^https?://") then
      return mp.INFECTED
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
