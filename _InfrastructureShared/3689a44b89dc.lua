pe.mmap_patch_va(pevars.sigaddr + 21, "\235")
pe.mmap_patch_va(pevars.sigaddr + 60, "\235")
return mp.CLEAN
