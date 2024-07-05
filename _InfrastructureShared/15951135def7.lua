mp.set_mpattribute("lua_codepatch_obfuscator_th_1")
pe.mmap_patch_va(pevars.sigaddr + 5, "\144\144")
return mp.SUSPICIOUS
