local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 4 then
  L0_0 = pevars
  L0_0 = L0_0.epsec
  if L0_0 == 1 then
    L0_0 = pesecs
    L1_1 = pevars
    L1_1 = L1_1.epsec
    L0_0 = L0_0[L1_1]
    L0_0 = L0_0.SizeOfRawData
    if L0_0 >= 40960 then
      L0_0 = pesecs
      L1_1 = pevars
      L1_1 = L1_1.epsec
      L0_0 = L0_0[L1_1]
      L0_0 = L0_0.SizeOfRawData
      if L0_0 <= 57344 then
        L0_0 = mp
        L0_0 = L0_0.SUSPICIOUS
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
