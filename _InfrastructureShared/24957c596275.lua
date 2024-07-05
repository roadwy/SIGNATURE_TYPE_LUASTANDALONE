mp.set_mpattribute("PEBMPAT:Deep_Analysis_VMM_Grow")
mp.set_mpattribute("lua_codepatch_obfuscator_tt_4")
pe.mmap_patch_va(pevars.sigaddr + 27, "\144\144")
return mp.CLEAN
