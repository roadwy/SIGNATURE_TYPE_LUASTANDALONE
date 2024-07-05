local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 5 then
  L0_0 = pevars
  L0_0 = L0_0.epsec
  if L0_0 == 1 then
    L0_0 = pesecs
    L1_1 = pevars
    L1_1 = L1_1.epsec
    L0_0 = L0_0[L1_1]
    L0_0 = L0_0.Name
    if L0_0 == ".text" then
      L0_0 = pesecs
      L1_1 = pevars
      L1_1 = L1_1.epsec
      L0_0 = L0_0[L1_1]
      L0_0 = L0_0.SizeOfRawData
      if L0_0 >= 237568 then
        L0_0 = pesecs
        L1_1 = pevars
        L1_1 = L1_1.epsec
        L0_0 = L0_0[L1_1]
        L0_0 = L0_0.SizeOfRawData
        if L0_0 <= 393216 then
          L0_0 = pesecs
          L1_1 = pehdr
          L1_1 = L1_1.NumberOfSections
          L0_0 = L0_0[L1_1]
          L0_0 = L0_0.Name
          if L0_0 == ".reloc" then
            L0_0 = pesecs
            L1_1 = pehdr
            L1_1 = L1_1.NumberOfSections
            L0_0 = L0_0[L1_1]
            L0_0 = L0_0.SizeOfRawData
            if L0_0 >= 9216 then
              L0_0 = pesecs
              L1_1 = pehdr
              L1_1 = L1_1.NumberOfSections
              L0_0 = L0_0[L1_1]
              L0_0 = L0_0.SizeOfRawData
              if L0_0 <= 12288 then
                L0_0 = mp
                L0_0 = L0_0.INFECTED
                return L0_0
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
