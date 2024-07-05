local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:Vampa:Probability"
L0_0 = L0_0(L1_1)
if L0_0 ~= nil and L0_0 >= 50 and L0_0 <= 100 then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L1_1 = L1_1("AGGR:CombinedJavaClass")
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.set_mpattribute
    L1_1("Lua:JCM_Vampa:GE50")
  end
  if L0_0 >= 70 then
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L1_1 = L1_1("JavaDahotException")
    if L1_1 ~= true then
      L1_1 = {
        99,
        95,
        90,
        80,
        70
      }
      SetAttributeFromClassifierScoresEx(L0_0, L1_1, "Lua:Vampa:")
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
