local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 > 3 then
  L0_0 = pesecs
  L0_0 = L0_0[2]
  L0_0 = L0_0.PointerToRawData
  L1_1 = pesecs
  L1_1 = L1_1[1]
  L1_1 = L1_1.SizeOfRawData
  L0_0 = L0_0 - L1_1
  if L0_0 >= 12288 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
