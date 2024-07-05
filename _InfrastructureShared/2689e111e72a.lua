if pe.mmap_va(pevars.sigaddr + 9, 1) == "\000" or pe.mmap_va(pevars.sigaddr + 9, 1) == "\001" or pe.mmap_va(pevars.sigaddr + 9, 1) == "\016" then
  pe.mmap_patch_va(pevars.sigaddr + 10, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + 16, "\144\144")
  mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN
