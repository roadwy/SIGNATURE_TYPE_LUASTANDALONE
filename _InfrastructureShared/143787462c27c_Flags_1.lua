local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[3]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.matched
  end
end
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
if not L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[5]
  L1_1 = L1_1.matched
  if not L1_1 then
    L1_1 = hstrlog
    L1_1 = L1_1[6]
    L1_1 = L1_1.matched
  end
end
if L0_0 and L1_1 then
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.HSTR_WEIGHT
if L2_2 >= 1 then
  L2_2 = mp
  L2_2 = L2_2.LOWFI
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
