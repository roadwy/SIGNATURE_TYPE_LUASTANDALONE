local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.bitxor
L1_1 = headerpage
L1_1 = L1_1[1]
L2_2 = headerpage
L2_2 = L2_2[2]
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= 52 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitxor
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L1_1 = L1_1(L2_2, 1)
L2_2 = mp
L2_2 = L2_2.readu_u16
L2_2 = L2_2(headerpage, 3)
L0_0 = L0_0(L1_1, L2_2, L2_2(headerpage, 3))
if L0_0 ~= 16496 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitxor
L1_1 = headerpage
L1_1 = L1_1[1]
L2_2 = 202
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.bitxor
L2_2 = headerpage
L2_2 = L2_2[2]
L1_1 = L1_1(L2_2, L0_0)
if L1_1 == 254 then
  L1_1 = mp
  L1_1 = L1_1.bitxor
  L2_2 = headerpage
  L2_2 = L2_2[3]
  L1_1 = L1_1(L2_2, L0_0)
  if L1_1 == 186 then
    L1_1 = mp
    L1_1 = L1_1.bitxor
    L2_2 = headerpage
    L2_2 = L2_2[4]
    L1_1 = L1_1(L2_2, L0_0)
  end
elseif L1_1 ~= 190 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = headerpage
L1_1 = L1_1[5]
if L1_1 == L0_0 then
  L1_1 = headerpage
  L1_1 = L1_1[6]
elseif L1_1 ~= L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 > 786432 or L1_1 < 256 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.readprotection
L2_2(false)
L2_2 = mp
L2_2 = L2_2.readfile
L2_2 = L2_2(0, L1_1)
if L2_2 == nil then
  return mp.CLEAN
end
mp.vfo_add_buffer(fastBinaryTransform(L2_2, "(.)", L0_0, mp.bitxor), "[XorJavaClass]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
