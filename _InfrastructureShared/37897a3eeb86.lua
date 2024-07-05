pe.mmap_patch_va(pevars.sigaddr + 15, "\235\024")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
