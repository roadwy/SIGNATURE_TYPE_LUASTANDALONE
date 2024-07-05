pe.mmap_patch_va(pevars.sigaddr + 19, "3\246")
pe.mmap_patch_va(pevars.sigaddr + 30, "\000\001\000")
return mp.INFECTED
