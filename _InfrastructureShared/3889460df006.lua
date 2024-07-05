local L0_0, L1_1
L0_0 = pevars
L0_0 = L0_0.sigaddr
L0_0 = L0_0 + 32
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(pe.mmap_va(L0_0, 64), "t\017", 1, true)
if L1_1 == nil then
  L1_1 = string.find(pe.mmap_va(L0_0, 32), "t\003", 1, true)
  if L1_1 == nil then
    L1_1 = string.find(pe.mmap_va(L0_0, 64), "t\018", 1, true)
    if L1_1 == nil then
      L1_1 = string.find(pe.mmap_va(L0_0, 64), "t\002", 1, true)
    end
  end
end
pe.mmap_patch_va(L0_0 + L1_1 - 1, "\235")
return mp.INFECTED
