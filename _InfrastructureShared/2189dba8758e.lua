if not mp.get_mpattribute("lua_codepatch_Obfuscator_XQ") then
  return mp.CLEAN
end
if pe.get_regval(pe.REG_EBX) ~= 2011627520 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 2, "d\000\000\000")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
