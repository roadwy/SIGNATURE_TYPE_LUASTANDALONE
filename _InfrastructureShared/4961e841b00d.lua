local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 == 2 then
  L0_0 = pesecs
  L0_0 = L0_0[2]
  L0_0 = L0_0.PointerToRawData
  if L0_0 == 2701144064 then
    L0_0 = pesecs
    L0_0 = L0_0[2]
    L0_0 = L0_0.PointerToRawData
    L1_1 = pehdr
    L1_1 = L1_1.SizeOfImage
    if L0_0 > L1_1 then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
