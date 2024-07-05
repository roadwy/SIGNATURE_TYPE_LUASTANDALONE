pe.mmap_patch_va(pevars.sigaddr + 28, "\144\144\144\144\144\144")
mp.set_mpattribute("do_deep_rescan")
return mp.INFECTED
