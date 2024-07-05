local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.no_security
if L0_0 == true then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if not (L0_0 >= 5) then
    L0_0 = pehdr
    L0_0 = L0_0.NumberOfSections
  elseif L0_0 <= 7 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
