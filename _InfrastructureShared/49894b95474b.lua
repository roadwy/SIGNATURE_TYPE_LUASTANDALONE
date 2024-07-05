if mp.get_mpattribute("PEBMPAT:VirTool:Win32/Obfuscator.XT") then
  mp.set_mpattribute("lua_codepatch_obfuscator_xt_1")
  pe.mmap_patch_va(pevars.sigaddr + 17, "\235 ")
  pe.mmap_patch_va(pevars.sigaddr + 49, "\235")
end
return mp.CLEAN
