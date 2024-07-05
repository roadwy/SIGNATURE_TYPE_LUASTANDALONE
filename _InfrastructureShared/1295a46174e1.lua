local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 21, 100)
if L0_0 ~= nil and string.find(L0_0, "\129;\026\164\006\000u", 1, true) ~= nil then
  pe.mmap_patch_va(pevars.sigaddr + 21 + string.find(L0_0, "\129;\026\164\006\000u", 1, true) + 5, "\144\144")
end
return mp.INFECTED
