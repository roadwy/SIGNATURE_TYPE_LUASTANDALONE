if pe.isvdllbase(pe.get_regval(pe.REG_EBX)) == false or pe.isvdllimage(pe.get_regval(pe.REG_ECX)) == false or mp.readu_u32(pe.mmap_va_nofastfail(pevars.sigaddr + 2, 4), 1) >= 4294966272 then
  return mp.CLEAN
end
if mp.readu_u16(pe.mmap_va(mp.bitand(pe.get_regval(pe.REG_EIP) + 11 + mp.readu_u32(pe.mmap_va(pevars.sigaddr + 7, 4), 1), 4294967295), 4), 1) ~= 60811 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr, "\184\r\024\141>\144")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
