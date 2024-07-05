local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 1, 4)
if mp.readu_u32(L0_0, 1) > 65536 then
  pe.mmap_patch_va(pevars.sigaddr + 17, "\000")
end
return mp.CLEAN
