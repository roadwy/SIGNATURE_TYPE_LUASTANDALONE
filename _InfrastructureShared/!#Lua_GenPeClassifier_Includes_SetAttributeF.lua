local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:PEClassifier:Probability"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil and L0_0 >= 80 and L0_0 <= 100 then
  L1_1 = {
    99,
    95,
    90,
    80
  }
  SetAttributeFromClassifierScoresEx(L0_0, L1_1, "Lua:GenPeClassifier:")
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
