if pe.isvdllimage(pe.get_regval(pe.REG_ECX)) == false or mp.readu_u32(pe.mmap_va_nofastfail(pevars.sigaddr + 2, 4), 1) <= 4096 or mp.readu_u32(pe.mmap_va_nofastfail(pevars.sigaddr + 2, 4), 1) >= 4294966272 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr, "\184\r\024\141>\144")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
