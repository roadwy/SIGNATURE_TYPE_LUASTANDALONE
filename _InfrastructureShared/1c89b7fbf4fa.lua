if pe.mmap_va(pevars.sigaddr + 2, 4) == "\224\147\004\000" or pe.mmap_va(pevars.sigaddr + 2, 4) == "\0005\f\000" or pe.mmap_va(pevars.sigaddr + 1, 1) == "\255" or pe.mmap_va(pevars.sigaddr + 1, 1) == "\254" then
  pe.mmap_patch_va(pevars.sigaddr + 6, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + 11, "\235")
  mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN
