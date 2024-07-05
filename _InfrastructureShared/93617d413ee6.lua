local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.TimeDateStamp
if L0_0 == 0 then
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
