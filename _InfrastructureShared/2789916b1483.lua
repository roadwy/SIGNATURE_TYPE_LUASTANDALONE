local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PEBMPAT:Virus:Win32/Xpaj.gen!F"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.mmap_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L2_2 = 32
L0_0 = L0_0(L1_1, L2_2)
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = L0_0
L3_3 = 3
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u32
L3_3 = L0_0
L2_2 = L2_2(L3_3, 16)
L3_3 = string
L3_3 = L3_3.format
L3_3 = L3_3("CURE:Virus:Win32/Xpaj.C_%08X_%08X", L1_1, L2_2)
mp.set_mpattribute(L3_3)
return mp.INFECTED
