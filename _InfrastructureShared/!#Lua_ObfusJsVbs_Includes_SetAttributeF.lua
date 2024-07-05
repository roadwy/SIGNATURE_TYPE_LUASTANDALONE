local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:ObfusJsVbs:Probability"
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.set_mpattribute
L1_1("Lua:ObfusJsVbsML:" .. L0_0)
if L0_0 ~= nil and L0_0 >= 70 and L0_0 <= 100 then
  L1_1 = {
    99,
    95,
    90,
    80,
    70,
    60,
    50,
    40
  }
  SetAttributeFromClassifierScoresEx(L0_0, L1_1, "Lua:ObfusJsVbsML1:")
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
