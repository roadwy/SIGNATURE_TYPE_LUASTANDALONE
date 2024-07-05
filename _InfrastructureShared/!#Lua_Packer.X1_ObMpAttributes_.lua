local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 > 5 then
  L0_0 = pesecs
  L0_0 = L0_0[1]
  L0_0 = L0_0.SizeOfRawData
  if L0_0 == 0 then
    L0_0 = pesecs
    L0_0 = L0_0[2]
    L0_0 = L0_0.SizeOfRawData
    if L0_0 == 0 then
      L0_0 = pesecs
      L0_0 = L0_0[3]
      L0_0 = L0_0.SizeOfRawData
      if L0_0 == 0 then
        L0_0 = mp
        L0_0 = L0_0.INFECTED
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
