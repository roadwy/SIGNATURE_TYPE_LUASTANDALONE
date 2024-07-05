pe.mmap_patch_va(pevars.sigaddr + 34, "\199\133")
pe.mmap_patch_va(pevars.sigaddr + 44, "\015\132")
return mp.CLEAN
