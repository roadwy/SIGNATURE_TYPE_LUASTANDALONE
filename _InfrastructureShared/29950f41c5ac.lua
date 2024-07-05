mp.set_mpattribute("lua_codepatch_obfuscator_tc_1")
pe.mmap_patch_va(pevars.sigaddr, "\187\139\230[_")
return mp.SUSPICIOUS
