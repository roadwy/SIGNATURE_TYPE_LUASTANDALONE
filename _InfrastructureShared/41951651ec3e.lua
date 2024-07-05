local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pe
L1_1 = L1_1.get_regval
L2_2 = pe
L2_2 = L2_2.REG_ESP
L1_1 = L1_1(L2_2)
L1_1 = L1_1 + 4
L2_2 = 4
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L0_0 = L1_1
L1_1 = pe
L1_1 = L1_1.moffset_va
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = false
L2_2(L3_3)
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = L1_1
L4_4 = 4
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L2_2
L3_3 = L3_3(L4_4, 1)
L2_2 = L3_3
if L2_2 ~= 909132101 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = L1_1 - 4
L3_3 = L3_3(L4_4, 4)
L2_2 = L3_3
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = L2_2
L3_3 = L3_3(L4_4, 1)
L2_2 = L3_3
if L2_2 == 557012289 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.set_mpattribute
L4_4 = "Lua:Autoit!Modified"
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L3_3 < 65536 or L3_3 > 5242880 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readfile
L4_4 = L4_4(L0_0 - 20, L3_3 - (L0_0 - 20))
mp.vfo_add_buffer(L4_4, "[AutoIT_Script]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
