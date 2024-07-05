local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 10 then
  L0_0 = pesecs
  L0_0 = L0_0[9]
  L0_0 = L0_0.PointerToRawData
  if L0_0 == 1536 then
    L0_0 = pehdr
    L0_0 = L0_0.Machine
    if L0_0 == 332 then
      L0_0 = pehdr
      L0_0 = L0_0.Subsystem
      if L0_0 == 2 then
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
