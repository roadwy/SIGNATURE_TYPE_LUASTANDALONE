local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = {}
L1_1 = tostring
L1_1 = L1_1(L2_2)
L1_1 = L1_1 .. L2_2
if L1_1 ~= nil then
  for L5_5 in L2_2(L3_3, L4_4) do
    if L5_5 ~= nil and not L0_0[L5_5] then
      mp.set_mpattribute("MpInternal_researchdata=batloaderuri=" .. L5_5)
      L0_0[L5_5] = true
    end
  end
end
return L2_2
