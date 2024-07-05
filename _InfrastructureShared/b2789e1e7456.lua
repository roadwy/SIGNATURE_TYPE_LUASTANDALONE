local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.HSTR_WEIGHT
if L0_0 >= 21 then
  L0_0 = hstrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.hitcount
  L1_1 = hstrlog
  L1_1 = L1_1[4]
  L1_1 = L1_1.hitcount
  L0_0 = L0_0 + L1_1
  L1_1 = hstrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.hitcount
  L0_0 = L0_0 + L1_1
  L1_1 = hstrlog
  L1_1 = L1_1[6]
  L1_1 = L1_1.hitcount
  L0_0 = L0_0 + L1_1
  if L0_0 >= 5 then
    L0_0 = mp
    L0_0 = L0_0.INFECTED
    return L0_0
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
