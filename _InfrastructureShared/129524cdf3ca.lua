local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.get_regval
L1_1 = pe
L1_1 = L1_1.REG_EBP
L0_0 = L0_0(L1_1)
L0_0 = L0_0 - 328
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(L0_0, 4)
if mp.readu_u32(L1_1, 1) ~= 268675836 then
  mp.set_mpattribute("PEBMPAT:AntiEmuCheckConstantMemAdd")
end
return mp.CLEAN
