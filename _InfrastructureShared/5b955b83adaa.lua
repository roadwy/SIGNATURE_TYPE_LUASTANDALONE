mp.set_mpattribute("lua_codepatch_obfuscator_xt_4")
pe.mmap_patch_va(pevars.sigaddr + 20, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 67, "\144\144")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
mp.set_mpattribute("PEBMPAT:VirTool:Win32/Obfuscator.XT")
return mp.SUSPICIOUS
