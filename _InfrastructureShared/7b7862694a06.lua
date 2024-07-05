local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.no_security
if L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if L0_0 == 5 then
    L0_0 = pesecs
    L0_0 = L0_0[2]
    L0_0 = L0_0.Name
    if L0_0 == ".rdata" then
      L0_0 = pesecs
      L0_0 = L0_0[2]
      L0_0 = L0_0.SizeOfRawData
      if L0_0 > 20480 then
        L0_0 = pesecs
        L0_0 = L0_0[2]
        L0_0 = L0_0.SizeOfRawData
        if L0_0 < 28672 then
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
