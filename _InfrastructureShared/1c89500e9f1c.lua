pe.mmap_patch_va(pevars.sigaddr + 10, "3\192")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
