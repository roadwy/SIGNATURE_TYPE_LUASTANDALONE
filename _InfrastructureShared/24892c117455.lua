pe.mmap_patch_va(pevars.sigaddr + 7, "\002")
pe.mmap_patch_va(mp.bitand(pe.get_regval(pe.REG_EBP) + mp.readu_u32(pe.mmap_va(pevars.sigaddr + 2, 4), 1), 4294967295), "\003\000\000\000")
return mp.INFECTED
