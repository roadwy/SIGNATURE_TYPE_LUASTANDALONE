local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 15000 then
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
L3_3 = 768
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "{ string .*= \""
L3_3 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readfile
L4_4 = L4_4(L3_3, mp.getfilesize() - L3_3)
mp.set_mpattribute("//MpBase64DecodeLongLines")
mp.vfo_add_buffer(L4_4, "[ShellCypt]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
