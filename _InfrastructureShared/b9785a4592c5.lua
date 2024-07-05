local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if L0_0 == 3 then
    L0_0 = pesecs
    L0_0 = L0_0[3]
    L0_0 = L0_0.VirtualSize
    if L0_0 >= 2176 then
      L0_0 = pesecs
      L0_0 = L0_0[3]
      L0_0 = L0_0.VirtualSize
      if L0_0 <= 4096 then
        L0_0 = pehdr
        L0_0 = L0_0.SizeOfImage
        if L0_0 >= 20480 then
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 <= 36864 then
            L0_0 = mp
            L0_0 = L0_0.INFECTED
            return L0_0
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
