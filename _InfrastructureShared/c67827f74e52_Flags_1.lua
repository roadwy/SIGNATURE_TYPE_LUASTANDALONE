local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 5 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
