local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.CompanyName
if L1_1 == nil then
  return mp.CLEAN
end
L1_1 = string.lower(L1_1)
if ({
  ["microsoft corporation"] = "Lua:Company_Microsoft"
})[L1_1] ~= nil then
  mp.set_mpattribute(({
    ["microsoft corporation"] = "Lua:Company_Microsoft"
  })[L1_1])
end
return mp.CLEAN
