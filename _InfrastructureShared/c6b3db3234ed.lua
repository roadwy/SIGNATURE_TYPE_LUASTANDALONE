local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "d0027073-ea64-42ca-8293-241186e9011f"
L4_4 = 1
L5_5 = true
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 == nil or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.sub
L4_4 = L0_0
L5_5 = L2_2 + 1
L3_3 = L3_3(L4_4, L5_5, L6_6)
L4_4 = 0
L5_5 = 1
for L9_9 in L6_6(L7_7, L8_8) do
  if L5_5 == 1 then
    L4_4 = tonumber(L9_9)
  end
  L5_5 = L5_5 + 1
end
L6_6(L7_7, L8_8)
return L6_6
