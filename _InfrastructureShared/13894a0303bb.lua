if pe.mmap_va(mp.bitand(pevars.sigaddr + 10 + mp.readu_u32(pe.mmap_va(pevars.sigaddr + 6, 4), 1), 4294967295), 6) == "\141d$\f\015\133" then
  pe.mmap_patch_va(pevars.sigaddr + 1, "\002\000\000\000")
  return mp.INFECTED
end
return mp.CLEAN
