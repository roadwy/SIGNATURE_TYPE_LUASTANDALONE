mp.set_mpattribute("lua_codepatch_tibs_4")
pe.mmap_patch_va(pevars.sigaddr + 11, "\000")
return mp.INFECTED
