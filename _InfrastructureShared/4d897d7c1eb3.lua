local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 9, 1)
pe.set_regval(pe.REG_EAX, string.byte(L0_0, 1))
pe.mmap_patch_va(pevars.sigaddr + 13, "\144\144")
return mp.INFECTED
