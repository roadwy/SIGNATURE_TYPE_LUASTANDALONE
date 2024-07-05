local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L2_2 = L0_0
L1_1 = L0_0.len
L1_1 = L1_1(L2_2)
if L1_1 < 60 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.match
L2_2 = L1_1(L2_2, "(.+\\)([^\\]+)$")
if L1_1:len() > 50 and (string.sub(L2_2, 1, 21) == "internet explorer.lnk" or string.sub(L2_2, 1, 34) == "internet explorer (no add-ons).lnk" or string.sub(L2_2, 1, 36) == "launch internet explorer browser.lnk") and (L1_1:find("\\microsoft\\internet explorer\\quick launch", 1, true) ~= nil or string.sub(L1_1, -21) == "\\start menu\\programs\\" or string.sub(L1_1, -46) == "\\start menu\\programs\\accessories\\system tools\\" or string.sub(L1_1, -33) == "\\start menu\\programs\\accessories\\") then
  mp.set_mpattribute("Lua:IexploreParamLnk")
end
return mp.CLEAN
