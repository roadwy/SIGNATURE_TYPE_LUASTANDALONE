local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = 1
else
  L0_0 = L0_0 or 0
end
L1_1 = hstrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = 1
else
  L1_1 = L1_1 or 0
end
if mp.bitxor(L0_0, L1_1) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN
