local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[5]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[6]
  L0_0 = L0_0.matched
end
if L0_0 then
  L1_1 = mp
  L1_1 = L1_1.HSTR_WEIGHT
  if L1_1 == 3 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = peattributes
L1_1 = L1_1.hasstandardentry
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
