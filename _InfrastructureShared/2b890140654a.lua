if pe.get_regval(pe.REG_EAX) == 0 then
  pe.mmap_patch_va(pevars.sigaddr + 3, "4\000\000\000")
end
pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr, 64), "\015\133", 1, true) - 1, "\144\144\144\144\144\144")
return mp.INFECTED
