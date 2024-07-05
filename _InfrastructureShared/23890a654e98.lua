local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L0_0 = L0_0(L1_1, 48)
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "u\002", 1, true)
if L1_1 ~= nil then
  pe.mmap_patch_va(pevars.sigaddr + L1_1 - 1, "\235")
  L1_1 = string.find(L0_0, "\184\001\000\000\000\015\162", 1, true)
  if L1_1 ~= nil then
    pe.mmap_patch_va(pevars.sigaddr + L1_1, "\002")
  end
  return mp.INFECTED
end
return mp.CLEAN
