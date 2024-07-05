local L0_0
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(pe.mmap_va(mp.readu_u32(pe.mmap_va(pevars.sigaddr + 2, 4), 1), 4), 1)
if pe.get_api_id(L0_0) ~= 3267971814 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 18, "\144\144")
return mp.INFECTED
