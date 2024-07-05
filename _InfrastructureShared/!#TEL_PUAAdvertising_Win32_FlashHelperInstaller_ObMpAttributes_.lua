local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.FileDescription
L2_2 = L0_0.CompanyName
if L1_1 and L2_2 then
  L1_1 = string.lower(L1_1)
  L2_2 = string.lower(L2_2)
  if string.find(L2_2, "adobe inc", 1, true) and string.find(L1_1, "adobe download manager", 1, true) then
    mp.set_mpattribute("Lua:FlashHelperInstaller")
    return mp.INFECTED
  end
end
return mp.CLEAN
