pe.mmap_patch_va(pevars.sigaddr + (string.find(pe.mmap_va(pevars.sigaddr, 64), "s", 1, true) - 1), "\235")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
