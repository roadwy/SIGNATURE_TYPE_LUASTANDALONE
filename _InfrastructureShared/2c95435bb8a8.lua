if pe.isvdllimage(pe.get_regval(pe.REG_ECX)) == false then
  return mp.CLEAN
end
if pe.isvdllbase(pe.get_regval(pe.REG_EBX)) == false then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 1, "\255\255\255\255")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
