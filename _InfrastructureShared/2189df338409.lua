pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 64), "u", 21, true), "3\255")
return mp.INFECTED
