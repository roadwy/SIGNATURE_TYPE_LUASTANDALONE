local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 17, 1)
if string.byte(L0_0) == 129 and string.byte(pe.mmap_va(pevars.sigaddr + 21, 1)) == 2 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 24, "\235")
return mp.INFECTED
