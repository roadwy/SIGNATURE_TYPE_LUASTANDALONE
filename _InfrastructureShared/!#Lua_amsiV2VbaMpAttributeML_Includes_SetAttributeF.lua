local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:AMSI2:ML:Vba"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = {
    98,
    95,
    90,
    80,
    70,
    60,
    50,
    40,
    30,
    20
  }
  SetAttributeFromClassifierScoresEx(L0_0, L1_1, "RPF:AMSI2:ML:Vba:")
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
