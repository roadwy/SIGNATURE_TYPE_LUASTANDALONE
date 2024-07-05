local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr, 64)
if string.find(L0_0, "a\129}", 1, true) ~= nil then
  pe.mmap_patch_va(pevars.sigaddr + string.find(L0_0, "a\129}", 1, true) + 7, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + string.find(L0_0, "a\129}", 1, true) + 16, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + string.find(L0_0, "a\129}", 1, true) + 22, "\144\144")
  return mp.INFECTED
end
return mp.LOWFI
