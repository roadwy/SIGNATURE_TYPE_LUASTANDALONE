local L0_0
L0_0 = pe
L0_0 = L0_0.mmap_va
L0_0 = L0_0(pevars.sigaddr, 96)
if string.find(L0_0, "t\002\235", 1, true) - 1 ~= nil and string.find(L0_0, "t\002\235", string.find(L0_0, "t\002\235", 1, true) - 1 + 4, true) - 1 ~= nil then
  pe.mmap_patch_va(pevars.sigaddr + (string.find(L0_0, "t\002\235", 1, true) - 1), "\235")
  pe.mmap_patch_va(pevars.sigaddr + (string.find(L0_0, "t\002\235", string.find(L0_0, "t\002\235", 1, true) - 1 + 4, true) - 1), "\235")
end
return mp.LOWFI
