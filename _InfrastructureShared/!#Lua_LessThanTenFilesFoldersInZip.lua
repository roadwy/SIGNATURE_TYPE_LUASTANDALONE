local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if not (L0_0 < 128) then
  L0_0 = mp
  L0_0 = L0_0.FOOTERPAGE_SZ
elseif L0_0 < 22 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 67324752 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 276 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = 276
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
L3_3 = L3_3 - L1_1
L2_2 = L2_2(L3_3, L1_1)
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(true)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.FOOTERPAGE_SZ
L3_3 = L3_3 - 21
if mp.readu_u32(footerpage, L3_3) ~= 101010256 then
  L3_3 = string.find(L2_2, "PK\005\006", 1, true)
  if L3_3 == nil then
    return mp.CLEAN
  end
  L3_3 = L3_3 + mp.FOOTERPAGE_SZ - L1_1
end
mp.UfsSetMetadataBool("Lua:FileInZip", true)
if mp.readu_u16(footerpage, L3_3 + 10) > 100 then
  mp.set_mpattribute("//Lua:MoreThan100FilesFoldersInZip")
  return mp.CLEAN
end
if 10 < mp.readu_u16(footerpage, L3_3 + 10) then
  return mp.CLEAN
end
mp.set_mpattribute("//Lua:LessThanTenFilesFoldersInZip")
return mp.INFECTED
