local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.no_security
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.ismsil
  if L0_0 == true then
    L0_0 = peattributes
    L0_0 = L0_0.isexe
    if L0_0 == true then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
