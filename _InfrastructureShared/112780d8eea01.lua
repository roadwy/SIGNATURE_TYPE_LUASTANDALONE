local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[3]
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
L0_0 = hstrlog[6].matched and 1 or 0
L1_1 = hstrlog[7].matched and 1 or 0
if mp.bitxor(L0_0, L1_1) == 1 and mp.bitxor(L0_0, L1_1) == 1 and (peattributes.epscn_writable or peattributes.hasappendeddata) then
  return mp.INFECTED
end
return mp.CLEAN
