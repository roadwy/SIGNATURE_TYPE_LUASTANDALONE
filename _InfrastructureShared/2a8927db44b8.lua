local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 11
L0_0 = L0_0(L1_1, 4)
L1_1 = mp
L1_1 = L1_1.readu_u32
L1_1 = L1_1(L0_0, 1)
L0_0 = pe.mmap_va(L1_1, 4)
L1_1 = mp.readu_u32(L0_0, 1)
if pe.get_api_id(L1_1) == 3267971814 then
  pe.mmap_patch_va(pevars.sigaddr + 7, "\235")
  return mp.INFECTED
end
return mp.CLEAN
