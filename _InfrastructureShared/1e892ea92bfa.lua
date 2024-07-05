if pe.mmap_va(pevars.sigaddr + 12, 1) == "\000" or pe.mmap_va(pevars.sigaddr + 12, 1) == "\001" or pe.mmap_va(pevars.sigaddr + 12, 1) == "\016" or pe.mmap_va(pevars.sigaddr + 12, 1) == "@" then
  pe.mmap_patch_va(pevars.sigaddr + 7, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + 13, "\235")
  mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN
