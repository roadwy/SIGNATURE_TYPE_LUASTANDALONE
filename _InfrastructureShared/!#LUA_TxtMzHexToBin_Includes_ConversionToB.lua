local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 8192 or L0_0 > 4194304 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 0
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == 1953651835 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = tostring
L3_3 = headerpage
L5_5 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "4d5a9000"
L5_5 = 1
L4_4 = L2_2(L3_3, L4_4, L5_5, true)
L5_5 = mp
L5_5 = L5_5.readprotection
L5_5(false)
L5_5 = mp
L5_5 = L5_5.readfile
L5_5 = L5_5(L2_2 - 1, L0_0 - (L2_2 - 1))
if L5_5 == nil then
  return mp.CLEAN
end
mp.vfo_add_buffer(fastHex2Bin(L5_5, "([0-9A-Fa-f][0-9A-Fa-f])"), "[txtmzhextobin]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
