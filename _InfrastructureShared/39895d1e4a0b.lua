local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 32
L0_0 = L0_0(L1_1, L2_2)
L1_1 = string
L1_1 = L1_1.byte
L2_2 = L0_0
L3_3 = 13
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L0_0
L4_4 = 14
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 * 256
L1_1 = L1_1 + L2_2
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L0_0
L4_4 = 15
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 * 65536
L1_1 = L1_1 + L2_2
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L0_0
L4_4 = 16
L2_2 = L2_2(L3_3, L4_4)
L2_2 = L2_2 * 16777216
L1_1 = L1_1 + L2_2
if L1_1 < 53248 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = string
L2_2 = L2_2.byte
L3_3 = L0_0
L4_4 = 18
L2_2 = L2_2(L3_3, L4_4)
if L2_2 < 48 then
  L3_3 = mp
  L3_3 = L3_3.INFECTED
  return L3_3
end
L3_3 = pevars
L3_3 = L3_3.sigaddr
L3_3 = L3_3 + 18
L3_3 = L3_3 + L2_2
L4_4 = pe
L4_4 = L4_4.mmap_va
L4_4 = L4_4(L3_3 - 1, 4)
L0_0 = L4_4
L4_4 = string
L4_4 = L4_4.byte
L4_4 = L4_4(L0_0, 1)
if L4_4 < 128 then
  return mp.INFECTED
end
L4_4 = mp.bitor(L4_4, 4294967040)
if mp.bitand(L3_3 + L4_4, 4294967295) ~= pevars.sigaddr then
  return mp.INFECTED
end
mp.set_mpattribute("lua_codepatch_fakesysdef_1")
pe.mmap_patch_va(pevars.sigaddr + 12, "\000\000\000\000")
return mp.INFECTED
