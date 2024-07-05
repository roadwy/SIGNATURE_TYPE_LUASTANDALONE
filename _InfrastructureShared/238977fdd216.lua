local L0_0
L0_0 = string
L0_0 = L0_0.byte
L0_0 = L0_0(pe.mmap_va(pevars.sigaddr + 2, 1))
if L0_0 + mp.readu_u32(pe.mmap_va(pevars.sigaddr + 4, 4), 1) == 1623 or mp.readu_u32(pe.mmap_va(pevars.sigaddr + 4, 4), 1) - L0_0 == 1623 then
  return mp.INFECTED
end
return mp.CLEAN
