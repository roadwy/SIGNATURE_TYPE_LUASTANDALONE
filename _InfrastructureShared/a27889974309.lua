local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if L0_0 >= 6 then
    L0_0 = 0
    L1_1 = 0
    for L5_5 = 2, L3_3.NumberOfSections do
      L6_6 = pesecs
      L6_6 = L6_6[L5_5]
      L6_6 = L6_6.SizeOfRawData
      L0_0 = L0_0 + L6_6
      L6_6 = pesecs
      L6_6 = L6_6[L5_5]
      L6_6 = L6_6.SizeOfRawData
      if L1_1 < L6_6 then
        L6_6 = pesecs
        L6_6 = L6_6[L5_5]
        L1_1 = L6_6.SizeOfRawData
      end
    end
    if L2_2 < L3_3 then
      return L2_2
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
