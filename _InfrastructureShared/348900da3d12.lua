pe.mmap_patch_va(pevars.sigaddr + 12, "\235\024")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
