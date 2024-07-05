mp.set_mpattribute("RDTSC_LoD_trick")
pe.mmap_patch_va(pevars.sigaddr + 42, "\144\144")
return mp.INFECTED
