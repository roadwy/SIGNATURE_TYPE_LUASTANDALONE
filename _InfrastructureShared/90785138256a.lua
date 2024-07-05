local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.epinfirstsect
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.entrybyte55
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.epscn_eqsizes
    if not L0_0 then
      L0_0 = pesecs
      L1_1 = pehdr
      L1_1 = L1_1.NumberOfSections
      L0_0 = L0_0[L1_1]
      L0_0 = L0_0.Name
      if L0_0 == ".rsrc" then
        L0_0 = pehdr
        L0_0 = L0_0.NumberOfSections
        if L0_0 == 8 then
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 196608 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 327680 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 1310720 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 1769472 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
        end
        L0_0 = pehdr
        L0_0 = L0_0.NumberOfSections
        if L0_0 == 6 then
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 1048576 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 1310720 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 131072 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 167936 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 217088 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 282624 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 466944 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 557056 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 749568 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 946176 then
              L0_0 = mp
              L0_0 = L0_0.INFECTED
              return L0_0
            end
          end
        end
        L0_0 = pehdr
        L0_0 = L0_0.NumberOfSections
        if L0_0 == 7 then
          L0_0 = pehdr
          L0_0 = L0_0.SizeOfImage
          if L0_0 >= 217088 then
            L0_0 = pehdr
            L0_0 = L0_0.SizeOfImage
            if L0_0 <= 589824 then
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
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
