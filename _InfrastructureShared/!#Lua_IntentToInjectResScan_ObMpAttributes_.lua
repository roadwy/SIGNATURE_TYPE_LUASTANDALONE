local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:[EmbeddedResource]"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readu_u64
L1_1 = headerpage
L2_2 = 1
L0_0 = L0_0(L1_1, L2_2)
if L0_0 ~= -8554208160678674432 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.BMSearchFile
L2_2 = 0
L3_3 = mp
L3_3 = L3_3.HEADERPAGE_SZ
L4_4 = "MZ\144\000\003\144\000"
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4)
if not L0_0 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L1_1 = L1_1 and L1_1 + 1
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = headerpage
L4_4 = L1_1 + 60
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.readu_u16
L4_4 = headerpage
L5_5 = L1_1 + L2_2
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 17744 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L3_3 == nil or L3_3 > 10485760 then
  L3_3 = 10485760
end
L4_4 = mp
L4_4 = L4_4.readu_u16
L5_5 = headerpage
L4_4 = L4_4(L5_5, L1_1 + L2_2 + 22)
L5_5 = mp
L5_5 = L5_5.bitand
L5_5 = L5_5(L4_4, 8192)
if L5_5 then
  L5_5 = mp
  L5_5 = L5_5.set_mpattribute
  L5_5("Lua:DLLInEmbeddedResource")
  L5_5 = mp
  L5_5 = L5_5.readprotection
  L5_5(false)
  L5_5 = mp
  L5_5 = L5_5.readfile
  L5_5 = L5_5(L1_1 - 1, L3_3 - L1_1 - 1)
  mp.readprotection(true)
  mp.vfo_add_buffer(L5_5, "[ShelcoridDll]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.INFECTED
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
