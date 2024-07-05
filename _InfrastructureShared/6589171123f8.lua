local L0_0
L0_0 = mp
L0_0 = L0_0.readu_u32
L0_0 = L0_0(pe.mmap_va(pe.get_regval(pe.REG_EBP) - mp.bitand(0 - string.byte(pe.mmap_va(pevars.sigaddr + 2, 1)), 255), 4), 1)
if pe.get_api_id(L0_0) == 3164325074 then
  pe.mmap_patch_va(pevars.sigaddr + string.find(pe.mmap_va(pevars.sigaddr + 12, 16), "t", 1, true) + 11, "\235")
  return mp.INFECTED
end
return mp.CLEAN
