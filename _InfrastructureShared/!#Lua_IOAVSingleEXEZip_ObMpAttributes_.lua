local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.HEADERPAGE_SZ
if L0_0 < 1024 then
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
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 19
L0_0 = L0_0(L1_1, L2_2)
if L0_0 < 4096 or L0_0 > 67108864 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 27
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = headerpage
L4_4 = 29
L2_2 = L2_2(L3_3, L4_4)
if L1_1 < 4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = string
L4_4 = L4_4.char
L4_4 = L4_4(headerpage[31 + L1_1 - 4], headerpage[31 + L1_1 - 3], headerpage[31 + L1_1 - 2], headerpage[31 + L1_1 - 1])
L3_3 = L3_3(L4_4, L4_4(headerpage[31 + L1_1 - 4], headerpage[31 + L1_1 - 3], headerpage[31 + L1_1 - 2], headerpage[31 + L1_1 - 1]))
if L3_3 ~= ".exe" and L3_3 ~= ".pif" and L3_3 ~= ".scr" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = 30 + L1_1
L4_4 = L4_4 + L2_2
L4_4 = L4_4 + L0_0
if mp.getfilesize() < L4_4 + 16 then
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile(L4_4, 4) ~= "PK\003\004" then
  mp.set_mpattribute("Lua:IOAVSingleEXEZip")
  mp.UfsSetMetadataBool("Lua:UfsIOAVSingleEXEZip", true)
end
return mp.CLEAN
