local L0_0
L0_0 = pe
L0_0 = L0_0.get_regval
L0_0 = L0_0(pe.REG_EBX)
if pe.get_api_id(L0_0) == 1269389306 then
  mp.set_mpattribute("lua_codepatch_Obfuscator.zg")
  pe.mmap_patch_va(pevars.sigaddr + 16, "\144\144")
end
return mp.CLEAN
