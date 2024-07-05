local L0_0
L0_0 = string
L0_0 = L0_0.byte
L0_0 = L0_0(pe.mmap_va(pevars.sigaddr + 8, 1))
L0_0 = 256 - L0_0
if mp.readu_u32(pe.mmap_va(pe.get_regval(pe.REG_EBP) - L0_0, 4), 1) ~= 139 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 9, "\235")
return mp.INFECTED
