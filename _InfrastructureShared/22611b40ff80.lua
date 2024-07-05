local L0_0, L1_1, L2_2, L3_3
L0_0 = pehdr
L0_0 = L0_0.ImageBase
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L2_2 = pe
L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_RESOURCE
L1_1 = L1_1[L2_2]
L1_1 = L1_1.RVA
L0_0 = L0_0 + L1_1
if L0_0 <= 0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pehdr
L1_1 = L1_1.DataDirectory
L2_2 = pe
L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_RESOURCE
L1_1 = L1_1[L2_2]
L1_1 = L1_1.Size
L2_2 = hstrlog
L2_2 = L2_2[1]
L2_2 = L2_2.VA
if L0_0 < L2_2 then
  L3_3 = L0_0 + L1_1
  if L2_2 < L3_3 then
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
