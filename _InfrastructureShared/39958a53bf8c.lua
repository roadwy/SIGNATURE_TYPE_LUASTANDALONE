if mp.get_mpattribute("RPF:PEHasIOAVURL") and mp.get_mpattribute("SIGATTR:SellExecuteExError") then
  mp.set_mpattribute("lua_codepatch_tibs_1")
  pe.mmap_patch_va(pevars.sigaddr + 9, "\235")
end
return mp.INFECTED
