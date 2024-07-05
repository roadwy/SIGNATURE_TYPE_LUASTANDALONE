local L0_0, L1_1, L2_2
L0_0 = -1
L1_1 = pesecs
L1_1 = L1_1[3]
L1_1 = L1_1.Name
if L1_1 == ".data" then
  L0_0 = 3
end
L1_1 = pesecs
L1_1 = L1_1[2]
L1_1 = L1_1.Name
if L1_1 == ".data" then
  L0_0 = 2
end
if L0_0 == -1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pesecs
L1_1 = L1_1[L0_0]
L1_1 = L1_1.SizeOfRawData
if L1_1 > 4096 then
  L1_1 = pehdr
  L1_1 = L1_1.ImageBase
  L2_2 = pesecs
  L2_2 = L2_2[L0_0]
  L2_2 = L2_2.VirtualAddress
  L1_1 = L1_1 + L2_2
  L1_1 = L1_1 + 16
  L2_2 = pe
  L2_2 = L2_2.mmap_va
  L2_2 = L2_2(L1_1, 16)
  if string.byte(L2_2, 1) == 77 and string.byte(L2_2, 2) == 90 then
    return mp.INFECTED
  end
  return mp.CLEAN
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
