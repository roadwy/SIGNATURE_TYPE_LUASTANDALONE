local L0_0
L0_0 = string
L0_0 = L0_0.byte
L0_0 = L0_0(pe.mmap_va(pevars.sigaddr + 2, 1))
if L0_0 + string.byte(pe.mmap_va(pevars.sigaddr + 5, 1)) == 87 or string.byte(pe.mmap_va(pevars.sigaddr + 5, 1)) - L0_0 == 87 then
  return mp.INFECTED
end
return mp.CLEAN
