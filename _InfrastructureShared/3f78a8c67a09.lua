local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.BaseOfData
if L0_0 == 0 then
  L0_0 = pehdr
  L0_0 = L0_0.SizeOfInitializedData
  if L0_0 == 0 then
    L0_0 = pehdr
    L0_0 = L0_0.SizeOfUninitializedData
    if L0_0 == 0 then
      L0_0 = pehdr
      L0_0 = L0_0.SizeOfCode
      if L0_0 == 0 then
        L0_0 = hstrlog
        L0_0 = L0_0[1]
        L0_0 = L0_0.VA
        L1_1 = pehdr
        L1_1 = L1_1.ImageBase
        L0_0 = L0_0 - L1_1
        L1_1 = pesecs
        L1_1 = L1_1[1]
        L1_1 = L1_1.VirtualAddress
        L0_0 = L0_0 - L1_1
        if L0_0 == 4336 then
          L0_0 = mp
          L0_0 = L0_0.INFECTED
          return L0_0
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
