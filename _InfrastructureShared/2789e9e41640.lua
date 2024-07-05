pe.mmap_patch_va(pevars.sigaddr + 7, "\235")
pe.mmap_patch_va(pevars.sigaddr + 12, "\002")
return mp.INFECTED
