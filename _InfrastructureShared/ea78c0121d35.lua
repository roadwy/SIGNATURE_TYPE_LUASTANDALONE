local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
end
L1_1 = mp
L1_1 = L1_1.HSTR_WEIGHT
if L1_1 >= 3 then
  if not L0_0 then
    L1_1 = hstrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.INFECTED
    return L1_1
  end
else
  L1_1 = mp
  L1_1 = L1_1.HSTR_WEIGHT
  if L1_1 >= 2 then
    L1_1 = mp
    L1_1 = L1_1.LOWFI
    return L1_1
  elseif L0_0 then
    L1_1 = mp
    L1_1 = L1_1.LOWFI
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
