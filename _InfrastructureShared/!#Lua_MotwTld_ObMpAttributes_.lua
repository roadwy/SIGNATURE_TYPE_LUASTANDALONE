local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetMOTWHostUrl
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.match
  L1_1 = L1_1(L0_0, "https?://.-%.(%a+)/")
  if L1_1 then
    mp.set_mpattribute("Lua:MotwTld_" .. L1_1)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
