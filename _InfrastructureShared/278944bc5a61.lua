if mp.get_mpattribute("RPF:PEHasIOAVURL") and mp.get_mpattribute("SIGATTR:SellExecuteExError") then
  mp.set_mpattribute("lua_codepatch_tibs_3")
  pe.mmap_patch_va(pevars.sigaddr + 7, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + 14, "\178\000\144\144\144\144")
end
return mp.INFECTED
