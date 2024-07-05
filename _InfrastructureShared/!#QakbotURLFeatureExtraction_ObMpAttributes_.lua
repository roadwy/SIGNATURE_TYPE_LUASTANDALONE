local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = {}
L1_1 = 0
L2_2 = tostring
L2_2 = L2_2(L3_3)
L2_2 = L2_2 .. L3_3
if L2_2 ~= nil then
  for L6_6 in L3_3(L4_4, L5_5) do
    if L6_6 ~= nil and not L0_0[L6_6] then
      L1_1 = L1_1 + 1
      mp.set_mpattribute("MpInternal_researchdata=powershelluri=" .. L6_6)
      L0_0[L6_6] = true
    end
  end
end
if L1_1 > 8 then
  L6_6 = "urls"
  L3_3(L4_4)
  L3_3(L4_4)
elseif L1_1 > 2 then
  L6_6 = "urls"
  L3_3(L4_4)
  L3_3(L4_4)
end
return L3_3
