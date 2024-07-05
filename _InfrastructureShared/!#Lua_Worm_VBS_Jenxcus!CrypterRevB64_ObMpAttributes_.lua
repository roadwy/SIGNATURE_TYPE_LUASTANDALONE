local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 10000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 500000 then
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
L4_4 = "'(.-)%s"
L4_4 = L2_2(L3_3, L4_4)
if L4_4 == nil then
  return mp.CLEAN
end
L4_4 = L4_4:reverse()
mp.set_mpattribute("//MpBase64DecodeLongLines")
mp.vfo_add_buffer(L4_4, "[RevB64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
