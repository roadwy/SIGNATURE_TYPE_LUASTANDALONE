local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L0_0 == nil or L1_1 < 8388608 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.FileDescription
if L2_2 and L0_0.InternalName == nil then
  L2_2 = string.lower(L2_2)
  if string.find(L2_2, "2345\229\165\189\229\142\139 v", 1, true) then
    mp.set_mpattribute("Lua:HaoZip")
    return mp.INFECTED
  end
end
return mp.CLEAN
