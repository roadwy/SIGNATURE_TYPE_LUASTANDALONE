local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.hitcount
  if L0_0 > 5 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
