local L0_0, L1_1, L2_2
L0_0 = pevars
L0_0 = L0_0.epsec
if not (L0_0 < 4) then
  L0_0 = pevars
  L0_0 = L0_0.epsec
  L1_1 = pehdr
  L1_1 = L1_1.NumberOfSections
  if not (L0_0 > L1_1) then
    L0_0 = pesecs
    L1_1 = pevars
    L1_1 = L1_1.epsec
    L0_0 = L0_0[L1_1]
    L0_0 = L0_0.NameDW
    L1_1 = pesecs
    L2_2 = pevars
    L2_2 = L2_2.epsec
    L2_2 = L2_2 - 1
    L1_1 = L1_1[L2_2]
    L1_1 = L1_1.NameDW
    if L0_0 == L1_1 then
      L0_0 = pesecs
      L1_1 = pevars
      L1_1 = L1_1.epsec
      L1_1 = L1_1 - 1
      L0_0 = L0_0[L1_1]
      L0_0 = L0_0.SizeOfRawData
      if L0_0 == 0 then
        L0_0 = pesecs
        L1_1 = pevars
        L1_1 = L1_1.epsec
        L1_1 = L1_1 - 1
        L0_0 = L0_0[L1_1]
        L0_0 = L0_0.PointerToRawData
      end
    end
  end
elseif L0_0 ~= 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
