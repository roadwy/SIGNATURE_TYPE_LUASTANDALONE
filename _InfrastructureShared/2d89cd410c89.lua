pe.mmap_patch_va(pevars.sigaddr + 9, "\185\240\127\a\000\144\144\144")
pe.mmap_patch_va(pevars.sigaddr + 110, "\144\144")
return mp.INFECTED
