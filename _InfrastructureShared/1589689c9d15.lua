local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.readu_u32
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(pevars.sigaddr + 1, 4)
L0_0 = L0_0(L1_1, 1)
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(pe.mmap_va(L0_0, 4), 1)
if L1_1 ~= 67372036 then
  return mp.CLEAN
end
if mp.readu_u32(pe.mmap_va(L1_1, 16), 1) ~= 0 then
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 7, "3\192")
return mp.INFECTED
