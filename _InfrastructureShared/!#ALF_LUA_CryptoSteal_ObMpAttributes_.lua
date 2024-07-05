local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = 0
L1_1 = "//SCPT:HTML/DoubleCryptoFraudKey"
for L5_5 = 1, 30 do
  L6_6 = L1_1
  L6_6 = L6_6 .. L5_5
  if mp.get_mpattribute(L6_6) then
    L0_0 = L0_0 + 1
  end
end
if L0_0 > 1 then
  return L2_2
end
return L2_2
