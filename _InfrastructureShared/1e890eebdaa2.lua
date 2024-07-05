local L0_0, L1_1
L0_0 = 512
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(pevars.sigaddr - 256, L0_0)
if string.find(L1_1, "JB\015%z") then
  pe.mmap_patch_va(pevars.sigaddr + 7, "\144\144")
  pe.mmap_patch_va(pevars.sigaddr + 16, "\235")
  mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN
