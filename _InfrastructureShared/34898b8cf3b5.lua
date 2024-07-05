local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = string
L0_0 = L0_0.byte
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + 2
L3_3 = 1
L4_4 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L1_1(L2_2, L3_3))
L0_0 = 256 - L0_0
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = pe
L3_3 = L3_3.get_regval
L4_4 = pe
L4_4 = L4_4.REG_EBP
L3_3 = L3_3(L4_4)
L3_3 = L3_3 - L0_0
L4_4 = 4
L2_2 = L2_2(L3_3, L4_4)
L3_3 = 1
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = pe
L3_3 = L3_3.mmap_va
L4_4 = pe
L4_4 = L4_4.get_regval
L4_4 = L4_4(pe.REG_EBP)
L4_4 = L4_4 - L0_0
L4_4 = L4_4 - 16
L3_3 = L3_3(L4_4, 4)
L4_4 = 1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = 0
if L0_0 == 104 then
  L3_3 = 32
elseif L0_0 == 88 then
  L3_3 = 16
else
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readu_u32
L4_4 = L4_4(pe.mmap_va(pe.get_regval(pe.REG_EBP) - L0_0 + L3_3, 4), 1)
if L4_4 ~= 4096 and L4_4 ~= 4097 then
  return mp.CLEAN
end
mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!k1_k2.0_%02X%02X", mp.bitand(mp.shr32(L1_1, 2), 255), mp.bitand(mp.shr32(L2_2, 2), 255)))
mp.set_mpattribute(string.format("HSTR:VirTool:Win32/Obfuscator.PN!l1_cnt_%08X", L4_4))
return mp.INFECTED
