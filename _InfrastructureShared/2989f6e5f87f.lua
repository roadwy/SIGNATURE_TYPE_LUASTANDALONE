pe.mmap_patch_va(pevars.sigaddr + 21, "\144\144")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
