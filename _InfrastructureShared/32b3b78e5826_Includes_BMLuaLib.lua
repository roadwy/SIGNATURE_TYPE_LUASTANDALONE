local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.wp2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
L1_1 = {}
for L5_5 in L2_2(L3_3, L4_4) do
  L7_7 = L1_1
  L8_8 = L5_5
  L6_6(L7_7, L8_8)
end
L7_7 = "/home/"
L8_8 = "/run/"
if L4_4 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    L12_12 = #L8_8
    if L9_9 == L8_8 then
      if L9_9 then
        for L12_12 in L9_9(L10_10, L11_11) do
          table.insert(L3_3, L12_12)
        end
      end
    end
  end
end
if L4_4 ~= nil then
  L7_7 = 1
  L8_8 = true
  if L4_4 then
    return L4_4
  end
end
return L4_4
