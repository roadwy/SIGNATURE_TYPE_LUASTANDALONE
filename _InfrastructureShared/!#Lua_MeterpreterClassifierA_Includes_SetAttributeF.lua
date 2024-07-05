local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:MeterpreterClassifierA"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = {}
  L1_1["Lua:MeterpreterClassifierA:95"] = 95
  L1_1["Lua:MeterpreterClassifierA:90"] = 90
  L1_1["Lua:MeterpreterClassifierA:80"] = 80
  L1_1["Lua:MeterpreterClassifierA:70"] = 70
  L1_1["Lua:MeterpreterClassifierA:60"] = 60
  SetAttributeFromClassifierScores(L0_0, L1_1)
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
