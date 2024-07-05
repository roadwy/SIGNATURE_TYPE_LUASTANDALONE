local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = L0_0 + 8
L3_3 = 4
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L1_1
L2_2 = L2_2(L3_3, 1)
L3_3 = string
L3_3 = L3_3.byte
L3_3 = L3_3(L1_1, 2)
L3_3 = L3_3 * 256
L2_2 = L2_2 + L3_3
L3_3 = string
L3_3 = L3_3.byte
L3_3 = L3_3(L1_1, 3)
L3_3 = L3_3 * 65536
L2_2 = L2_2 + L3_3
if L2_2 < 1048575 then
  L3_3 = mp
  L3_3 = L3_3.readprotection
  L3_3(false)
  L3_3 = pe
  L3_3 = L3_3.mmap_va
  L3_3 = L3_3(L0_0, L2_2)
  mp.vfo_add_buffer(L3_3, "[Cabinet]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
