local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.Machine
if L0_0 == 332 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
