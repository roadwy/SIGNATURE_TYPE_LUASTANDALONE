pe.mmap_patch_va(pevars.sigaddr, "\235" .. string.char(string.find(pe.mmap_va(pevars.sigaddr, 128), "Q\139\207", 1, true) - 3))
return mp.INFECTED
