pe.mmap_patch_va(pevars.sigaddr, "\199\005")
pe.mmap_patch_va(pevars.sigaddr + 10, "\235")
return mp.INFECTED
