local L0_0, L1_1, L2_2
L0_0 = 0
L1_1 = string
L1_1 = L1_1.byte
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(pevars.sigaddr + 18, 1)
L1_1 = L1_1(L2_2, 1)
if L1_1 == 129 then
  L0_0 = 24
elseif L1_1 == 131 then
  L0_0 = 21
else
  L0_0 = 29
end
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(pevars.sigaddr + L0_0, 64)
if string.find(L2_2, "t", 1, true) == nil then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + L0_0 + string.find(L2_2, "t", 1, true) - 1, "\235")
return mp.INFECTED
