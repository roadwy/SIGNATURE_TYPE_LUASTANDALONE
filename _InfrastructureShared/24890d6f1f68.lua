pe.mmap_patch_va(pevars.sigaddr + 13, "\144\144")
mp.set_mpattribute("FOPEX:Deep_Analysis_VMM_Grow")
return mp.INFECTED
