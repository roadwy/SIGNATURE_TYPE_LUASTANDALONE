local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[5]
  L0_0 = L0_0.matched
elseif L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.VA
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.VA
  if L0_0 < L1_1 then
    L0_0 = hstrlog
    L0_0 = L0_0[2]
    L0_0 = L0_0.VA
    L1_1 = hstrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.VA
    if L0_0 < L1_1 then
      L0_0 = mp
      L0_0 = L0_0.INFECTED
      return L0_0
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
