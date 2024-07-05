local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.find
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L1_1 = L1_1(L2_2, 32)
L2_2 = "\232\000\000\000\000"
L0_0 = L0_0(L1_1, L2_2, 1, true)
L0_0 = L0_0 + 5
L0_0 = L0_0 - 1
L1_1 = pe
L1_1 = L1_1.mmap_va
L2_2 = pevars
L2_2 = L2_2.sigaddr
L2_2 = L2_2 + L0_0
L1_1 = L1_1(L2_2, 16)
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "\128,", 1, true)
if L2_2 == nil then
  L2_2 = string.find(L1_1, "\128\004", 1, true)
end
for _FORV_6_ = 1, L2_2 - 1 do
  pe.mmap_patch_va(pevars.sigaddr + L0_0 + _FORV_6_ - 1, "\144")
end
return _FOR_.INFECTED
