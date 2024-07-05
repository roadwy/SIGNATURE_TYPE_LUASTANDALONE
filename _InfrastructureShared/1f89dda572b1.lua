pe.mmap_patch_va(pevars.sigaddr + 6, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 14, "\235")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
