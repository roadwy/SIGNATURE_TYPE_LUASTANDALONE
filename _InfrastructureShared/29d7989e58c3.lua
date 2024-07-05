local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L1_1 = L1_1(L2_2)
if L1_1 then
elseif L2_2 <= 30 then
  return L2_2
end
for L5_5 in L2_2(L3_3, L4_4) do
  L6_6 = string
  L6_6 = L6_6.match
  L6_6 = L6_6(L5_5, "%w+:%w+")
  if L6_6 ~= nil and #string.match(L6_6, "%w+") == 12 and #string.match(L6_6, ":%w+") == 21 then
    return mp.LOWFI
  end
end
return L2_2
