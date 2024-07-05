local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr, 64)
if string.find(L0_0, "\137U\248", 1, true) ~= nil then
  pe.mmap_patch_va(pevars.sigaddr + string.find(L0_0, "\137U\248", 1, true) + 9, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + string.find(L0_0, "\137U\248", 1, true) + 18, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + string.find(L0_0, "\137U\248", 1, true) + 24, "\144\144")
  return mp.INFECTED
end
return mp.LOWFI
