local L0_0, L1_1, L2_2
L0_0 = pe
L0_0 = L0_0.get_versioninfo
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = "PUA:Block:2345Cn"
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = L0_0.InternalName
L2_2 = L0_0.FileDescription
if L1_1 then
  L1_1 = string.lower(L1_1)
else
  L1_1 = ""
end
L2_2 = L2_2 or ""
if string.find(L1_1, "haozip", 1, true) then
  mp.set_mpattribute("PUA:Block:HaoZip")
  return mp.INFECTED
end
if L2_2 and L1_1 == "" then
  L2_2 = string.lower(L2_2)
  if string.find(L2_2, "2345\229\165\189\229\142\139 v", 1, true) or string.find(L2_2, "2345}Y\139S v", 1, true) then
    mp.set_mpattribute("PUA:Block:HaoZip")
    return mp.INFECTED
  end
end
if L2_2 and L1_1 == "" then
  L2_2 = string.lower(L2_2)
  if string.find(L2_2, "2345\229\138\160\233\128\159\230\181\143\232\167\136\229\153\168 v", 1, true) then
    mp.set_mpattribute("PUA:Block:2345Browser")
    return mp.INFECTED
  end
end
mp.set_mpattribute("PUA:Block:2345Cn")
return mp.INFECTED
