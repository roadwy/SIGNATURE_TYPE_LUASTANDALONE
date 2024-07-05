pe.mmap_patch_va(pevars.sigaddr + 15, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 21, "\144\233")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
