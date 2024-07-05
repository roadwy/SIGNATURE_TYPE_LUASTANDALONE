mp.set_mpattribute("lua_codepatch_obfuscator_xt_3")
pe.mmap_patch_va(pevars.sigaddr + 30, "\144\144")
pe.mmap_patch_va(pevars.sigaddr + 50, "\144\144")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
mp.set_mpattribute("PEBMPAT:VirTool:Win32/Obfuscator.XT")
return mp.SUSPICIOUS
