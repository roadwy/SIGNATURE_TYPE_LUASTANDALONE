local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 256 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 2254718286 then
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = headerpage
  L3_3 = 1
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= 21775694 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 3
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L2_2 = L2_2(L3_3, 5)
if L2_2 < 8 or L0_0 < L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(false)
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(0, L0_0)
mp.writeu_u16(L3_3, 1, 23117)
mp.writeu_u32(L3_3, 61, L2_2)
mp.writeu_u32(L3_3, L2_2 + 1, 17744)
mp.writeu_u16(L3_3, L2_2 + 5, L1_1)
mp.vfo_add_buffer(L3_3, "MeraCfg", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
