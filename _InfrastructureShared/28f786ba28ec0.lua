local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = 1
else
  L0_0 = L0_0 or 0
end
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L0_0 = L0_0 + L1_1
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L0_0 = L0_0 + L1_1
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L0_0 = L0_0 + L1_1
L1_1 = hstrlog
L1_1 = L1_1[5]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L0_0 = L0_0 + L1_1
L1_1 = hstrlog
L1_1 = L1_1[6]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L0_0 = L0_0 + L1_1
L1_1 = hstrlog
L1_1 = L1_1[7]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L0_0 = L0_0 + L1_1
L1_1 = hstrlog
L1_1 = L1_1[8]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
L0_0 = L0_0 + L1_1
if L0_0 >= 2 then
  L1_1 = pesecs
  L1_1 = L1_1[1]
  L1_1 = L1_1.SizeOfRawData
  if L1_1 > 1310720 then
    L1_1 = pesecs
    L2_2 = pehdr
    L2_2 = L2_2.NumberOfSections
    L1_1 = L1_1[L2_2]
    L1_1 = L1_1.SizeOfRawData
    if L1_1 > 385024 then
      L1_1 = pehdr
      L1_1 = L1_1.MajorLinkerVersion
      if L1_1 == 2 then
        L1_1 = pehdr
        L1_1 = L1_1.MinorLinkerVersion
        if L1_1 == 25 then
          L1_1 = pehdr
          L1_1 = L1_1.NumberOfSections
          if L1_1 >= 9 then
            L1_1 = pehdr
            L1_1 = L1_1.MajorImageVersion
            if L1_1 == 0 then
              L1_1 = pehdr
              L1_1 = L1_1.MajorImageVersion
              if L1_1 == 0 then
                L1_1 = pehdr
                L1_1 = L1_1.MajorOperatingSystemVersion
                if L1_1 == 5 then
                  L1_1 = pehdr
                  L1_1 = L1_1.MinorOperatingSystemVersion
                  if L1_1 == 0 then
                    L1_1 = pevars
                    L1_1 = L1_1.epsec
                    if L1_1 == 2 then
                      L1_1 = mp
                      L1_1 = L1_1.INFECTED
                      return L1_1
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
