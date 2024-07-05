local L0_0, L1_1, L2_2, L3_3
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L0_0 == nil or L1_1 < 10485760 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.FileDescription
L3_3 = L0_0.InternalName
if L2_2 and L3_3 then
  L2_2 = string.lower(L2_2)
  L3_3 = string.lower(L3_3)
  if string.find(L2_2, "360\229\174\137\229\133\168\230\181\143\232\167\136\229\153\168", 1, true) and string.find(L3_3, "mini_installer", 1, true) then
    mp.set_mpattribute("Lua:360Browser")
    return mp.INFECTED
  end
end
return mp.CLEAN
