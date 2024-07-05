local L0_0, L1_1
L0_0 = 6
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(pe.mmap_va(pevars.sigaddr, 16), "\015\132", 1, true)
if not L1_1 then
  L1_1 = string.find(pe.mmap_va(pevars.sigaddr, 16), "t", 1, true)
  L0_0 = 2
end
if not L1_1 then
  return mp.CLEAN
end
if L0_0 == 6 then
  pe.mmap_patch_va(pevars.sigaddr + L1_1 - 1, "\144\144\144\144\144\144")
else
  pe.mmap_patch_va(pevars.sigaddr + L1_1 - 1, "\144\144")
end
return mp.INFECTED
