local L0_0
L0_0 = pe
L0_0 = L0_0.get_regval
L0_0 = L0_0(pe.REG_EDI)
L0_0 = L0_0 - 262148
if L0_0 == 7749888 then
  pe.mmap_patch_va(L0_0, "h\000Az\000\195")
end
return mp.INFECTED
