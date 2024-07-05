local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.x86_image
if L0_0 then
  L0_0 = pesecs
  L1_1 = pehdr
  L1_1 = L1_1.NumberOfSections
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.Characteristics
else
  if L0_0 ~= 3758096448 then
    L0_0 = pesecs
    L1_1 = pehdr
    L1_1 = L1_1.NumberOfSections
    L0_0 = L0_0[L1_1]
    L0_0 = L0_0.Characteristics
    if L0_0 ~= 3791650880 then
      L0_0 = pesecs
      L1_1 = pehdr
      L1_1 = L1_1.NumberOfSections
      L0_0 = L0_0[L1_1]
      L0_0 = L0_0.Characteristics
      if L0_0 ~= 3761242176 then
        L0_0 = pesecs
        L1_1 = pehdr
        L1_1 = L1_1.NumberOfSections
        L0_0 = L0_0[L1_1]
        L0_0 = L0_0.Characteristics
        if L0_0 ~= 3794796608 then
          L0_0 = pesecs
          L1_1 = pehdr
          L1_1 = L1_1.NumberOfSections
          L0_0 = L0_0[L1_1]
          L0_0 = L0_0.Characteristics
          if L0_0 ~= 3758096480 then
            L0_0 = pesecs
            L1_1 = pehdr
            L1_1 = L1_1.NumberOfSections
            L0_0 = L0_0[L1_1]
            L0_0 = L0_0.Characteristics
            if L0_0 ~= 3758096416 then
              L0_0 = pesecs
              L1_1 = pehdr
              L1_1 = L1_1.NumberOfSections
              L0_0 = L0_0[L1_1]
              L0_0 = L0_0.Characteristics
            end
          end
        end
      end
    end
end
elseif L0_0 == 3791650816 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
