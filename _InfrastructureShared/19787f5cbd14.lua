local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 10 then
  L0_0 = pesecs
  L0_0 = L0_0[6]
  L0_0 = L0_0.Name
  if L0_0 == "WET_J" then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
