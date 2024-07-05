if mp.readu_u32(pe.mmap_va(pe.get_regval(pe.REG_EBP) + 8, 4), 1) ~= 2089811968 or mp.readu_u32(pe.mmap_va(pe.get_regval(pe.REG_EBP) + 12, 4), 1) ~= 0 or mp.readu_u32(pe.mmap_va(pe.get_regval(pe.REG_EBP) + 20, 4), 1) ~= 8 then
  return mp.CLEAN
end
if mp.readu_u32(pe.mmap_va(pe.get_regval(pe.REG_EBP) + 16, 4), 1) == pehdr.ImageBase + pesecs[1].VirtualAddress then
  pe.set_peattribute("deep_analysis", true)
  pe.set_peattribute("hstr_exhaustive", true)
  return mp.INFECTED
end
return mp.CLEAN
