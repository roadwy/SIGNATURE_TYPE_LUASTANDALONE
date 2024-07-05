local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 9 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
elseif L0_0 ~= 4214784 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
