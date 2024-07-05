local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[9]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.HSTR_WEIGHT
elseif L0_0 >= 3 then
  L0_0 = mp
  L0_0 = L0_0.INFECTED
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
