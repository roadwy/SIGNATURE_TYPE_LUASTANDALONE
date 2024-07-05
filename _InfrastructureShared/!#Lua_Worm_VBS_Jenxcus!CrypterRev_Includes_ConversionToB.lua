local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 9000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 300000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L3_3 = L1_1
L2_2 = L1_1.find
L4_4 = "'(%x-)%s"
L4_4 = L2_2(L3_3, L4_4)
L4_4 = L4_4:reverse()
mp.vfo_add_buffer(fastHex2Bin(L4_4, "(..)"), "[JenxcusRev]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
