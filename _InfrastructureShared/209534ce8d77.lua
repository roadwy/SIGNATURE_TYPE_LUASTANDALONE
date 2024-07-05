local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr + 21, 35)
if L0_0 ~= nil and string.find(L0_0, "u", 1, true) ~= nil then
  pe.mmap_patch_va(pevars.sigaddr + 21 + string.find(L0_0, "u", 1, true) - 1, "\144\144")
end
return mp.INFECTED
