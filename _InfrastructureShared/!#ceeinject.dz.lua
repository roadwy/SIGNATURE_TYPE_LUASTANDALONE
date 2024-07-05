local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.HEADERPAGE_SZ
if L1_1 < 4096 or L0_0 < 4096 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 23117 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 41
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = 45
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = headerpage
L5_5 = 49
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.readu_u32
L5_5 = headerpage
L6_6 = 53
L4_4 = L4_4(L5_5, L6_6)
L5_5 = mp
L5_5 = L5_5.readu_u32
L6_6 = headerpage
L5_5 = L5_5(L6_6, L7_7)
if L1_1 == 0 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.bitand
L10_10 = 1
L6_6 = L6_6(L7_7, L8_8)
if L6_6 ~= 23117 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = mp
L6_6 = L6_6.readprotection
L6_6(L7_7)
L6_6 = mp
L6_6 = L6_6.readfile
L6_6 = L6_6(L7_7, L8_8)
for L10_10 = 1, 3840, 20 do
  mp.writeu_u32(L6_6, L10_10, mp.bitxor(mp.readu_u32(L6_6, L10_10), L1_1))
  mp.writeu_u32(L6_6, L10_10 + 4, mp.bitxor(mp.readu_u32(L6_6, L10_10 + 4), L2_2))
  mp.writeu_u32(L6_6, L10_10 + 8, mp.bitxor(mp.readu_u32(L6_6, L10_10 + 8), L3_3))
  mp.writeu_u32(L6_6, L10_10 + 12, mp.bitxor(mp.readu_u32(L6_6, L10_10 + 12), L4_4))
  mp.writeu_u32(L6_6, L10_10 + 16, mp.bitxor(mp.readu_u32(L6_6, L10_10 + 16), L5_5))
end
if L7_7 > 4096 then
  return L8_8
end
L10_10 = L7_7
if L8_8 ~= 17744 then
  return L8_8
end
L10_10 = L7_7 + 28
if L8_8 ~= 2560 then
  return L9_9
end
L10_10 = L6_6
if L9_9 ~= 1024 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = mp
L10_10 = L10_10.crc32
L10_10 = L10_10(-1, L6_6, L9_9 + 1, 32)
if L10_10 ~= 3735068208 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = mp
L10_10 = L10_10.vfo_add_buffer
L10_10(L6_6, "[CeeInject.gen!DZ]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L10_10 = mp
L10_10 = L10_10.CLEAN
return L10_10
