local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.hitcount
if L0_0 >= 3 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.hitcount
  if not (L0_0 >= 4) then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    L0_0 = L0_0.hitcount
  elseif L0_0 >= 4 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
