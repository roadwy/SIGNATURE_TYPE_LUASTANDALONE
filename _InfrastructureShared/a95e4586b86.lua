local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.isdynamic_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = pe
  L0_0 = L0_0.get_regval
  L1_1 = pe
  L1_1 = L1_1.REG_EAX
  L0_0 = L0_0(L1_1)
  L0_0 = L0_0 + 8
  L1_1 = pe
  L1_1 = L1_1.mmap_va
  L1_1 = L1_1(L0_0, 4)
  if mp.readu_u32(L1_1, 1) == 1334098973 then
    mp.set_mpattribute("PEBMPAT:AntiEmuTimeStampREAD")
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
