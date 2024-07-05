if not mp.get_mpattribute("lua_codepatch_urausy_lod") then
  return mp.CLEAN
end
if mp.readu_u32(pe.mmap_va(pevars.sigaddr + 23, 4), 1) >= 131072 then
  pe.mmap_patch_va(pevars.sigaddr + 23, "\000\000\000\000")
end
return mp.INFECTED
