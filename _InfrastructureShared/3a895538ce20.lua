local L0_0, L1_1, L2_2
L0_0 = 0
L1_1 = string
L1_1 = L1_1.byte
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(pevars.sigaddr + 14, 1)
L1_1 = L1_1(L2_2, 1)
if L1_1 == 129 then
  L0_0 = 20
elseif L1_1 == 131 then
  L0_0 = 17
else
  L0_0 = 24
end
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(pevars.sigaddr + L0_0, 64)
if string.find(L2_2, "t", 1, true) == nil then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + L0_0 + string.find(L2_2, "t", 1, true) - 1, "\235")
if string.byte(pe.mmap_va(pevars.sigaddr + 9, 1), 1) == 185 then
  for _FORV_7_ = 15, L0_0 + string.find(L2_2, "t", 1, true) - 1 do
    pe.mmap_patch_va(pevars.sigaddr + _FORV_7_ - 1, "\144")
  end
elseif string.byte(pe.mmap_va(pevars.sigaddr + 9, 1), 1) == 96 then
  for _FORV_7_ = string.find(pe.mmap_va(pevars.sigaddr, 32), "a\185", 1, true) + 1, L0_0 + string.find(L2_2, "t", 1, true) - 1 do
    pe.mmap_patch_va(pevars.sigaddr + _FORV_7_ - 1, "\144")
  end
  for _FORV_7_ = 10, string.find(pe.mmap_va(pevars.sigaddr + 9, 32), "a", 1, true) + 9 do
    pe.mmap_patch_va(pevars.sigaddr + _FORV_7_ - 1, "\144")
  end
else
  for _FORV_7_ = string.find(pe.mmap_va(pevars.sigaddr, 32), "\185", 1, true), L0_0 + string.find(L2_2, "t", 1, true) - 1 do
    pe.mmap_patch_va(pevars.sigaddr + _FORV_7_ - 1, "\144")
  end
end
return _FOR_.INFECTED
