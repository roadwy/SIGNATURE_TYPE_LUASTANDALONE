local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 ~= 3 then
  L0_0 = mp
  L0_0 = L0_0.LOWFI
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[2]
L0_0 = L0_0.Name
if L0_0 ~= ".scot" then
  L0_0 = mp
  L0_0 = L0_0.LOWFI
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.SUSPICIOUS
return L0_0
