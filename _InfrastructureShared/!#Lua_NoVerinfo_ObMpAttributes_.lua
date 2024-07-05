local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = L0_0.CompanyName
if L1_1 then
  L1_1 = string.lower(L1_1)
  L1_1 = L1_1:gsub(" ", "__")
  mp.set_mpattribute("Lua:PeCompanyName!" .. L1_1)
else
  mp.set_mpattribute("Lua:PeCompanyName!nil")
end
return mp.CLEAN
