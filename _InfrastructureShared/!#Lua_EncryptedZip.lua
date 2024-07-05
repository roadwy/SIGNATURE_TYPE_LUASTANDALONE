local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 5
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 20 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u16
L1_1 = headerpage
L2_2 = 7
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 9 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = headerpage
L2_2 = 19
L0_0 = L0_0(L1_1, L2_2)
if L0_0 < 24576 or L0_0 > 131072 then
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
if L1_1 > 128 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = string
L4_4 = L4_4.char
L5_5 = headerpage
L5_5 = L5_5[31]
L5_5 = L4_4(L5_5, headerpage[32], headerpage[33], headerpage[34], headerpage[35])
L3_3 = L3_3(L4_4, L5_5, L4_4(L5_5, headerpage[32], headerpage[33], headerpage[34], headerpage[35]))
if L1_1 > 8 and L3_3 == "senha" then
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L5_5 = "Lua:PossibleFourthremZIP"
  L4_4(L5_5)
end
L4_4 = mp
L4_4 = L4_4.get_mpattribute
L5_5 = "RPF:AnyFileHasIOAVURL"
L4_4 = L4_4(L5_5)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.get_mpattribute
L5_5 = "RPF:TopLevelFile"
L4_4 = L4_4(L5_5)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L1_1 < 4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = string
L5_5 = L5_5.char
L5_5 = L5_5(headerpage[31 + L1_1 - 4], headerpage[31 + L1_1 - 3], headerpage[31 + L1_1 - 2], headerpage[31 + L1_1 - 1])
L4_4 = L4_4(L5_5, L5_5(headerpage[31 + L1_1 - 4], headerpage[31 + L1_1 - 3], headerpage[31 + L1_1 - 2], headerpage[31 + L1_1 - 1]))
if L4_4 ~= ".exe" and L4_4 ~= ".pif" and L4_4 ~= ".scr" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = 30 + L1_1
L5_5 = L5_5 + L2_2
L5_5 = L5_5 + L0_0
if mp.getfilesize() < L5_5 + 16 then
  return mp.CLEAN
end
mp.readprotection(false)
if mp.readfile(L5_5, 4) ~= "PK\003\004" then
  mp.set_mpattribute("Lua:IOAVZIPSingleEncryptedEXE")
end
return mp.CLEAN
