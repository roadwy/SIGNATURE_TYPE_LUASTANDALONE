local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pe
L1_1 = L1_1.get_regval
L2_2 = pe
L2_2 = L2_2.REG_EAX
L1_1 = L1_1(L2_2)
L2_2 = 4
L0_0 = L0_0(L1_1, L2_2)
L1_1 = string
L1_1 = L1_1.byte
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L1_1 = L1_1 - 1
L2_2 = string
L2_2 = L2_2.byte
L2_2 = L2_2(L0_0, 3)
L2_2 = L2_2 + 16
pe.mmap_patch_va(pe.get_regval(pe.REG_EAX), string.char(L1_1))
pe.mmap_patch_va(pe.get_regval(pe.REG_EAX) + 2, string.char(L2_2))
return mp.INFECTED
