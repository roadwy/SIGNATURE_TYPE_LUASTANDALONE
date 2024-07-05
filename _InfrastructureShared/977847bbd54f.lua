local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[2]
L0_0 = L0_0.VA
L1_1 = pehdr
L1_1 = L1_1.ImageBase
L2_2 = pesecs
L2_2 = L2_2[1]
L2_2 = L2_2.VirtualAddress
L1_1 = L1_1 + L2_2
L1_1 = L1_1 + 240
if L0_0 < L1_1 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L0_0 = L0_0 + 10704
  L1_1 = pehdr
  L1_1 = L1_1.ImageBase
  L2_2 = pehdr
  L2_2 = L2_2.AddressOfEntryPoint
  L1_1 = L1_1 + L2_2
  if L0_0 < L1_1 then
    L0_0 = mp
    L0_0 = L0_0.SUSPICIOUS
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
