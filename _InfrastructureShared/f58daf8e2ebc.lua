local L0_0, L1_1
L0_0 = machohdr
L0_0 = L0_0.Magic
if L0_0 ~= 4277009103 then
  L0_0 = machohdr
  L0_0 = L0_0.Magic
elseif L0_0 == 3405691582 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
