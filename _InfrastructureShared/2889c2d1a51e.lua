local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 - 4
L0_0 = L0_0(L1_1, 21)
L1_1 = string
L1_1 = L1_1.byte
L1_1 = L1_1(L0_0, 2)
if L1_1 ~= string.byte(L0_0, 11) then
  return mp.CLEAN
end
pe.set_regval(pe.REG_EAX, L1_1)
pe.mmap_patch_va(pevars.sigaddr, "\144\144\144\144\144")
return mp.INFECTED
