if pe.get_regval(pe.REG_EBX) ~= 2147348480 then
  return mp.CLEAN
end
if string.byte(pe.mmap_va(pevars.sigaddr + 13, 1)) == 117 then
  pe.mmap_patch_va(pevars.sigaddr + 13, "\144\144")
else
  pe.mmap_patch_va(pevars.sigaddr + 13, "\235")
end
return mp.INFECTED
