local L0_0
L0_0 = string
L0_0 = L0_0.byte
L0_0 = L0_0(pe.mmap_va(pevars.sigaddr + 2, 1))
L0_0 = 256 - L0_0
pe.mmap_patch_va(pe.get_regval(pe.REG_EBP) - L0_0, "\n\000\000\000")
pe.mmap_patch_va(pevars.sigaddr + 32, "\255T$\b\144\144")
pe.set_image_filename("notepad.exe")
pe.reemulate()
return mp.INFECTED
