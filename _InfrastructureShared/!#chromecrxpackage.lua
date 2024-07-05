local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 256 or L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 875721283 then
  L1_1 = mp
  L1_1 = L1_1.readu_u32
  L2_2 = headerpage
  L3_3 = 5
  L1_1 = L1_1(L2_2, L3_3)
elseif L1_1 ~= 2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 9
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L2_2 = L2_2(L3_3, 13)
if L2_2 == 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L1_1 + L2_2
L3_3 = L3_3 + 17
if L3_3 >= mp.HEADERPAGE_SZ then
  return mp.CLEAN
end
if mp.readu_u16(headerpage, L3_3) ~= 19280 then
  return mp.CLEAN
end
mp.readprotection(false)
mp.vfo_add_buffer(mp.readfile(L3_3 - 1, L0_0 - L3_3 + 1), "[ChromeCrxPackage]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
