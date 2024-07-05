local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 5 then
  L0_0 = peattributes
  L0_0 = L0_0.epinfirstsect
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.hasappendeddata
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.SUSPICIOUS
return L0_0
