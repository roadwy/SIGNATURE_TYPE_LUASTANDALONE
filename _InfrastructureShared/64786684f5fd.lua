local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 9 then
  L0_0 = pesecs
  L1_1 = pehdr
  L1_1 = L1_1.NumberOfSections
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.Name
  if L0_0 == ".CN" then
    L0_0 = pesecs
    L1_1 = pevars
    L1_1 = L1_1.epsec
    L0_0 = L0_0[L1_1]
    L0_0 = L0_0.SizeOfRawData
    if L0_0 >= 475136 then
      L0_0 = pevars
      L0_0 = L0_0.epsecwr
      if L0_0 == 1 then
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
