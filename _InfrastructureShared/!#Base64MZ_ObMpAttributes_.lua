local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.readfile
L1_1 = 0
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
L0_0 = L0_0(L1_1, L2_2, L2_2())
L2_2 = L0_0
L1_1 = L0_0.find
L1_1 = L1_1(L2_2, "TV[pq]QAA[IM]AAAAEAA")
if L1_1 == nil or L1_1 == 1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L0_0.match
L2_2 = L2_2(L0_0, "[A-Za-z0-9+/=]+", L1_1)
mp.vfo_add_buffer(L2_2, "[Base64]", mp.bitor(mp.ADD_VFO_TAKE_ACTION_ON_DAD, mp.ADD_VFO_LOW_PRIORITY))
return mp.CLEAN
