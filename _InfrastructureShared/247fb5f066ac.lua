local L0_0, L1_1, L2_2
L0_0 = pevars
L0_0 = L0_0.sigaddr
L1_1 = pehdr
L1_1 = L1_1.ImageBase
L2_2 = pehdr
L2_2 = L2_2.AddressOfEntryPoint
L1_1 = L1_1 + L2_2
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
